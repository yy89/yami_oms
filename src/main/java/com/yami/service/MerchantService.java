package com.yami.service;

import com.yami.domain.merchant.Merchant;

import java.util.List;

public interface MerchantService {
	public List<Merchant> getMerchantByVerifyStatus(int status, int from, int size);
	public long countMerchantByVerifyStatus(int status);
	public void passMerchant(long id);
	public void rejectMerchant(long id);
}