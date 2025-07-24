package com.codegym.saveemailconfiguration.service;

import com.codegym.saveemailconfiguration.model.MailConfig;
import org.springframework.stereotype.Service;

@Service
public class MailConfigServiceImpl implements MailConfigService {
    private MailConfig currentConfig = new MailConfig("English", 10, true, "CodeGym");

    @Override
    public MailConfig getCurrentConfig() {
        return currentConfig;
    }

    @Override
    public void updateConfig(MailConfig config) {
        this.currentConfig = config;
    }
}
