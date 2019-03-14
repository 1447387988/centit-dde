package com.centit.dde.service;

import com.centit.dde.po.ExchangeMapInfo;
import com.centit.dde.po.MapInfoDetail;
import com.centit.support.database.utils.PageDesc;
import com.centit.framework.jdbc.service.BaseEntityManager;
import com.centit.framework.ip.po.DatabaseInfo;

import java.util.List;
import java.util.Map;

public interface ExchangeMapInfoManager extends BaseEntityManager<ExchangeMapInfo,Long> {

    List<ExchangeMapInfo> listImportExchangeMapinfo(List<Long> mapinfoId);

    void save(ExchangeMapInfo object);

    List<ExchangeMapInfo> listObjectExcludeUsed(Map<String, Object> filterMap, PageDesc pageDesc);

    List<MapInfoDetail> resolveSQL(DatabaseInfo databaseInfo, String sql);

    public ExchangeMapInfo getObjectById(Long mapInfoId);

    public void deleteObjectById(Long mapInfoId);
}
