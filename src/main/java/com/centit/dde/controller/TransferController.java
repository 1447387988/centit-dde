package com.centit.dde.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;

import com.centit.dde.dataio.CallWebService;
import com.centit.dde.dataio.ExportData;
import com.centit.dde.dataio.ImportData;
import com.centit.dde.po.ExchangeTask;
import com.centit.dde.service.ExchangeTaskManager;
import com.centit.dde.service.TransferManager;
import com.centit.framework.core.common.JsonResultUtils;
import com.centit.framework.core.controller.BaseController;
import com.centit.framework.security.model.CentitUserDetails;






@Controller
@RequestMapping("/transfer")
public class TransferController extends BaseController {
    
    @Resource
    private ExchangeTaskManager exchangeTaskMag;

    private static Log logger = LogFactory.getLog(TransferController.class);

    private TransferManager transferManager;

    public TransferManager getTransferManager() {
        return transferManager;
    }

    public void setTransferManager(TransferManager transferManager) {
        this.transferManager = transferManager;
    }

    private ExportData exportData;

    private ImportData importData;

    private CallWebService callWebService;

    public void setCallWebService(CallWebService callWebService) {
        this.callWebService = callWebService;
    }

    public void setImportData(ImportData importData) {
        this.importData = importData;
    }

    public void setExportData(ExportData exportData) {
        this.exportData = exportData;
    }

    private static final long serialVersionUID = 1L;

    
    @RequestMapping(value="/doTransfer/{taskIds}", method = {RequestMethod.POST})
    public void doTransfer(@PathVariable Long taskIds,  HttpServletRequest request,HttpServletResponse response) {
        final long taskId = taskIds;
//        final FUserinfo userDetails = (FUserinfo) this.getLoginUser();
        final CentitUserDetails userDetails = getLoginUser(request);
//        final Long taskId = Long.valueOf(request.getParameter("id"));
        
        ExchangeTask exchangeTask = exchangeTaskMag.getObjectById(taskId);
        
        String Type = exchangeTask.getTaskType();

        final String taskType = Type;

        ExecutorService executorService = Executors.newSingleThreadExecutor();

        executorService.execute(new Runnable() {
            @SuppressWarnings("synthetic-access")
            @Override
            public void run() {
                try {
                    if ("1".equals(taskType)) {
                        transferManager.runTransferTask(taskId, userDetails.getUserCode(), "1",taskType);
                    } else if ("2".equals(taskType)) {
                        exportData.runExportTask(taskId, userDetails.getUserCode(), "1",taskType);
                    } else if ("3".equals(taskType)) {
                        importData.runImportTask(taskId, userDetails.getUserCode(), "1");
                    } else if("4".equals(taskType)) {
                        callWebService.runCallServiceTask(taskId, userDetails.getUserCode(), "1",taskType);
                    }
                } catch (RuntimeException e) {
                    logger.error(e);
                }

            }
        });

//        dwzResultParam = new DwzResultParam();
//        dwzResultParam.setForwardUrl( "/dde/exchangeTask!list.do?s_taskType=" + taskType);
        //dwzResultParam.setMessage(SUCCESS);
        Collection<String> s= new ArrayList<String>();
        s.add("");
//        this.setActionMessages(s);
//        return SUCCESS;
        JsonResultUtils.writeSuccessJson(response);
    }

    @RequestMapping(value="/transferExecute", method = {RequestMethod.GET})
    public void transferExecute(HttpServletRequest request,HttpServletResponse response) {
//        return "transferExecute";
        JsonResultUtils.writeSuccessJson(response);
    }

}