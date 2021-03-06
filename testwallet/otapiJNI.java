/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 1.3.31
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */


class otapiJNI {
  public final static native int OT_API_Init(String jarg1);
  public final static native int OT_API_LoadWallet(String jarg1);
  public final static native String OT_API_CreateNym();
  public final static native int OT_API_AddServerContract(String jarg1);
  public final static native int OT_API_AddAssetContract(String jarg1);
  public final static native int OT_API_GetServerCount();
  public final static native int OT_API_GetAssetTypeCount();
  public final static native int OT_API_GetAccountCount();
  public final static native int OT_API_GetNymCount();
  public final static native String OT_API_GetServer_ID(int jarg1);
  public final static native String OT_API_GetServer_Name(String jarg1);
  public final static native String OT_API_GetAssetType_ID(int jarg1);
  public final static native String OT_API_GetAssetType_Name(String jarg1);
  public final static native String OT_API_GetAccountWallet_ID(int jarg1);
  public final static native String OT_API_GetAccountWallet_Name(String jarg1);
  public final static native String OT_API_GetAccountWallet_Balance(String jarg1);
  public final static native String OT_API_GetAccountWallet_Type(String jarg1);
  public final static native String OT_API_GetAccountWallet_AssetTypeID(String jarg1);
  public final static native int OT_API_GetNym_TransactionNumCount(String jarg1, String jarg2);
  public final static native String OT_API_GetNym_ID(int jarg1);
  public final static native String OT_API_GetNym_Name(String jarg1);
  public final static native int OT_API_SetNym_Name(String jarg1, String jarg2, String jarg3);
  public final static native int OT_API_SetAccountWallet_Name(String jarg1, String jarg2, String jarg3);
  public final static native int OT_API_SetAssetType_Name(String jarg1, String jarg2);
  public final static native int OT_API_SetServer_Name(String jarg1, String jarg2);
  public final static native String OT_API_VerifyAndRetrieveXMLContents(String jarg1, String jarg2);
  public final static native String OT_API_WriteCheque(String jarg1, String jarg2, String jarg3, String jarg4, String jarg5, String jarg6, String jarg7, String jarg8);
  public final static native String OT_API_WritePaymentPlan(String jarg1, String jarg2, String jarg3, String jarg4, String jarg5, String jarg6, String jarg7, String jarg8, String jarg9, String jarg10, String jarg11, String jarg12, String jarg13, String jarg14, String jarg15);
  public final static native String OT_API_LoadUserPubkey(String jarg1);
  public final static native String OT_API_LoadPubkey(String jarg1);
  public final static native int OT_API_VerifyUserPrivateKey(String jarg1);
  public final static native String OT_API_LoadPurse(String jarg1, String jarg2);
  public final static native String OT_API_LoadMint(String jarg1, String jarg2);
  public final static native String OT_API_LoadAssetContract(String jarg1);
  public final static native int OT_API_IsBasketCurrency(String jarg1);
  public final static native int OT_API_Basket_GetMemberCount(String jarg1);
  public final static native String OT_API_Basket_GetMemberType(String jarg1, int jarg2);
  public final static native String OT_API_Basket_GetMinimumTransferAmount(String jarg1);
  public final static native String OT_API_Basket_GetMemberMinimumTransferAmount(String jarg1, int jarg2);
  public final static native String OT_API_LoadAssetAccount(String jarg1, String jarg2, String jarg3);
  public final static native String OT_API_LoadInbox(String jarg1, String jarg2, String jarg3);
  public final static native String OT_API_LoadOutbox(String jarg1, String jarg2, String jarg3);
  public final static native int OT_API_Ledger_GetCount(String jarg1, String jarg2, String jarg3, String jarg4);
  public final static native String OT_API_Ledger_CreateResponse(String jarg1, String jarg2, String jarg3, String jarg4);
  public final static native String OT_API_Ledger_GetTransactionByIndex(String jarg1, String jarg2, String jarg3, String jarg4, int jarg5);
  public final static native String OT_API_Ledger_GetTransactionByID(String jarg1, String jarg2, String jarg3, String jarg4, String jarg5);
  public final static native String OT_API_Ledger_GetTransactionIDByIndex(String jarg1, String jarg2, String jarg3, String jarg4, int jarg5);
  public final static native String OT_API_Ledger_AddTransaction(String jarg1, String jarg2, String jarg3, String jarg4, String jarg5);
  public final static native String OT_API_Transaction_CreateResponse(String jarg1, String jarg2, String jarg3, String jarg4, String jarg5, int jarg6);
  public final static native String OT_API_Ledger_FinalizeResponse(String jarg1, String jarg2, String jarg3, String jarg4, int jarg5);
  public final static native String OT_API_Transaction_GetType(String jarg1, String jarg2, String jarg3, String jarg4);
  public final static native String OT_API_Transaction_GetVoucher(String jarg1, String jarg2, String jarg3, String jarg4);
  public final static native int OT_API_Transaction_GetSuccess(String jarg1, String jarg2, String jarg3, String jarg4);
  public final static native String OT_API_Pending_GetFromUserID(String jarg1, String jarg2, String jarg3, String jarg4);
  public final static native String OT_API_Pending_GetFromAcctID(String jarg1, String jarg2, String jarg3, String jarg4);
  public final static native String OT_API_Pending_GetNote(String jarg1, String jarg2, String jarg3, String jarg4);
  public final static native String OT_API_Pending_GetAmount(String jarg1, String jarg2, String jarg3, String jarg4);
  public final static native String OT_API_Pending_GetReferenceToNum(String jarg1, String jarg2, String jarg3, String jarg4);
  public final static native String OT_API_Purse_GetTotalValue(String jarg1, String jarg2, String jarg3);
  public final static native void OT_API_checkServerID(String jarg1, String jarg2);
  public final static native void OT_API_createUserAccount(String jarg1, String jarg2);
  public final static native void OT_API_checkUser(String jarg1, String jarg2, String jarg3);
  public final static native void OT_API_sendUserMessage(String jarg1, String jarg2, String jarg3, String jarg4, String jarg5);
  public final static native void OT_API_getRequest(String jarg1, String jarg2);
  public final static native void OT_API_getTransactionNumber(String jarg1, String jarg2);
  public final static native void OT_API_issueAssetType(String jarg1, String jarg2, String jarg3);
  public final static native void OT_API_getContract(String jarg1, String jarg2, String jarg3);
  public final static native void OT_API_getMint(String jarg1, String jarg2, String jarg3);
  public final static native void OT_API_createAssetAccount(String jarg1, String jarg2, String jarg3);
  public final static native void OT_API_getAccount(String jarg1, String jarg2, String jarg3);
  public final static native String OT_API_GenerateBasketCreation(String jarg1, String jarg2);
  public final static native String OT_API_AddBasketCreationItem(String jarg1, String jarg2, String jarg3, String jarg4);
  public final static native void OT_API_issueBasket(String jarg1, String jarg2, String jarg3);
  public final static native String OT_API_GenerateBasketExchange(String jarg1, String jarg2, String jarg3, String jarg4, int jarg5);
  public final static native String OT_API_AddBasketExchangeItem(String jarg1, String jarg2, String jarg3, String jarg4, String jarg5);
  public final static native void OT_API_exchangeBasket(String jarg1, String jarg2, String jarg3, String jarg4, int jarg5);
  public final static native void OT_API_notarizeWithdrawal(String jarg1, String jarg2, String jarg3, String jarg4);
  public final static native void OT_API_notarizeDeposit(String jarg1, String jarg2, String jarg3, String jarg4);
  public final static native void OT_API_notarizeTransfer(String jarg1, String jarg2, String jarg3, String jarg4, String jarg5, String jarg6);
  public final static native void OT_API_getInbox(String jarg1, String jarg2, String jarg3);
  public final static native void OT_API_getOutbox(String jarg1, String jarg2, String jarg3);
  public final static native void OT_API_getNymbox(String jarg1, String jarg2);
  public final static native String OT_API_LoadNymbox(String jarg1, String jarg2);
  public final static native void OT_API_processInbox(String jarg1, String jarg2, String jarg3, String jarg4);
  public final static native void OT_API_processNymbox(String jarg1, String jarg2, String jarg3);
  public final static native void OT_API_withdrawVoucher(String jarg1, String jarg2, String jarg3, String jarg4, String jarg5, String jarg6);
  public final static native void OT_API_depositCheque(String jarg1, String jarg2, String jarg3, String jarg4);
  public final static native void OT_API_depositPaymentPlan(String jarg1, String jarg2, String jarg3);
  public final static native void OT_API_issueMarketOffer(String jarg1, String jarg2, String jarg3, String jarg4, String jarg5, String jarg6, String jarg7, String jarg8, String jarg9, String jarg10, int jarg11);
  public final static native String OT_API_PopMessageBuffer();
  public final static native void OT_API_FlushMessageBuffer();
  public final static native String OT_API_Message_GetCommand(String jarg1);
  public final static native int OT_API_Message_GetSuccess(String jarg1);
  public final static native String OT_API_Message_GetLedger(String jarg1);
  public final static native String OT_API_Message_GetNewAssetTypeID(String jarg1);
  public final static native String OT_API_Message_GetNewIssuerAcctID(String jarg1);
  public final static native int OT_API_ConnectServer(String jarg1, String jarg2, String jarg3, String jarg4, String jarg5);
  public final static native int OT_API_ProcessSockets();
}
