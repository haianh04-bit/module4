package com.codegym.saveemailconfiguration.service;

import com.codegym.saveemailconfiguration.model.MailConfig;

public interface MailConfigService {
    MailConfig getCurrentConfig();
    void updateConfig(MailConfig config);
}
