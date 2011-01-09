# This file was automatically generated by SWIG (http://www.swig.org).
# Version 1.3.31
#
# Don't modify this file, modify the SWIG interface instead.

package otapi;
require Exporter;
require DynaLoader;
@ISA = qw(Exporter DynaLoader);
package otapic;
bootstrap otapi;
package otapi;
@EXPORT = qw( );

# ---------- BASE METHODS -------------

package otapi;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package otapi;

*OT_API_Init = *otapic::OT_API_Init;
*OT_API_LoadWallet = *otapic::OT_API_LoadWallet;
*OT_API_CreateNym = *otapic::OT_API_CreateNym;
*OT_API_AddServerContract = *otapic::OT_API_AddServerContract;
*OT_API_AddAssetContract = *otapic::OT_API_AddAssetContract;
*OT_API_GetServerCount = *otapic::OT_API_GetServerCount;
*OT_API_GetAssetTypeCount = *otapic::OT_API_GetAssetTypeCount;
*OT_API_GetAccountCount = *otapic::OT_API_GetAccountCount;
*OT_API_GetNymCount = *otapic::OT_API_GetNymCount;
*OT_API_GetServer_ID = *otapic::OT_API_GetServer_ID;
*OT_API_GetServer_Name = *otapic::OT_API_GetServer_Name;
*OT_API_GetAssetType_ID = *otapic::OT_API_GetAssetType_ID;
*OT_API_GetAssetType_Name = *otapic::OT_API_GetAssetType_Name;
*OT_API_GetAccountWallet_ID = *otapic::OT_API_GetAccountWallet_ID;
*OT_API_GetAccountWallet_Name = *otapic::OT_API_GetAccountWallet_Name;
*OT_API_GetAccountWallet_Balance = *otapic::OT_API_GetAccountWallet_Balance;
*OT_API_GetAccountWallet_Type = *otapic::OT_API_GetAccountWallet_Type;
*OT_API_GetAccountWallet_AssetTypeID = *otapic::OT_API_GetAccountWallet_AssetTypeID;
*OT_API_GetNym_TransactionNumCount = *otapic::OT_API_GetNym_TransactionNumCount;
*OT_API_GetNym_ID = *otapic::OT_API_GetNym_ID;
*OT_API_GetNym_Name = *otapic::OT_API_GetNym_Name;
*OT_API_SetNym_Name = *otapic::OT_API_SetNym_Name;
*OT_API_SetAccountWallet_Name = *otapic::OT_API_SetAccountWallet_Name;
*OT_API_SetAssetType_Name = *otapic::OT_API_SetAssetType_Name;
*OT_API_SetServer_Name = *otapic::OT_API_SetServer_Name;
*OT_API_VerifyAndRetrieveXMLContents = *otapic::OT_API_VerifyAndRetrieveXMLContents;
*OT_API_WriteCheque = *otapic::OT_API_WriteCheque;
*OT_API_WritePaymentPlan = *otapic::OT_API_WritePaymentPlan;
*OT_API_LoadUserPubkey = *otapic::OT_API_LoadUserPubkey;
*OT_API_LoadPubkey = *otapic::OT_API_LoadPubkey;
*OT_API_VerifyUserPrivateKey = *otapic::OT_API_VerifyUserPrivateKey;
*OT_API_LoadPurse = *otapic::OT_API_LoadPurse;
*OT_API_LoadMint = *otapic::OT_API_LoadMint;
*OT_API_LoadAssetContract = *otapic::OT_API_LoadAssetContract;
*OT_API_IsBasketCurrency = *otapic::OT_API_IsBasketCurrency;
*OT_API_Basket_GetMemberCount = *otapic::OT_API_Basket_GetMemberCount;
*OT_API_Basket_GetMemberType = *otapic::OT_API_Basket_GetMemberType;
*OT_API_Basket_GetMinimumTransferAmount = *otapic::OT_API_Basket_GetMinimumTransferAmount;
*OT_API_Basket_GetMemberMinimumTransferAmount = *otapic::OT_API_Basket_GetMemberMinimumTransferAmount;
*OT_API_LoadAssetAccount = *otapic::OT_API_LoadAssetAccount;
*OT_API_LoadInbox = *otapic::OT_API_LoadInbox;
*OT_API_LoadOutbox = *otapic::OT_API_LoadOutbox;
*OT_API_Ledger_GetCount = *otapic::OT_API_Ledger_GetCount;
*OT_API_Ledger_CreateResponse = *otapic::OT_API_Ledger_CreateResponse;
*OT_API_Ledger_GetTransactionByIndex = *otapic::OT_API_Ledger_GetTransactionByIndex;
*OT_API_Ledger_GetTransactionByID = *otapic::OT_API_Ledger_GetTransactionByID;
*OT_API_Ledger_GetTransactionIDByIndex = *otapic::OT_API_Ledger_GetTransactionIDByIndex;
*OT_API_Ledger_AddTransaction = *otapic::OT_API_Ledger_AddTransaction;
*OT_API_Transaction_CreateResponse = *otapic::OT_API_Transaction_CreateResponse;
*OT_API_Ledger_FinalizeResponse = *otapic::OT_API_Ledger_FinalizeResponse;
*OT_API_Transaction_GetType = *otapic::OT_API_Transaction_GetType;
*OT_API_Transaction_GetVoucher = *otapic::OT_API_Transaction_GetVoucher;
*OT_API_Transaction_GetSuccess = *otapic::OT_API_Transaction_GetSuccess;
*OT_API_Pending_GetFromUserID = *otapic::OT_API_Pending_GetFromUserID;
*OT_API_Pending_GetFromAcctID = *otapic::OT_API_Pending_GetFromAcctID;
*OT_API_Pending_GetNote = *otapic::OT_API_Pending_GetNote;
*OT_API_Pending_GetAmount = *otapic::OT_API_Pending_GetAmount;
*OT_API_Pending_GetReferenceToNum = *otapic::OT_API_Pending_GetReferenceToNum;
*OT_API_Purse_GetTotalValue = *otapic::OT_API_Purse_GetTotalValue;
*OT_API_checkServerID = *otapic::OT_API_checkServerID;
*OT_API_createUserAccount = *otapic::OT_API_createUserAccount;
*OT_API_checkUser = *otapic::OT_API_checkUser;
*OT_API_sendUserMessage = *otapic::OT_API_sendUserMessage;
*OT_API_getRequest = *otapic::OT_API_getRequest;
*OT_API_getTransactionNumber = *otapic::OT_API_getTransactionNumber;
*OT_API_issueAssetType = *otapic::OT_API_issueAssetType;
*OT_API_getContract = *otapic::OT_API_getContract;
*OT_API_getMint = *otapic::OT_API_getMint;
*OT_API_createAssetAccount = *otapic::OT_API_createAssetAccount;
*OT_API_getAccount = *otapic::OT_API_getAccount;
*OT_API_GenerateBasketCreation = *otapic::OT_API_GenerateBasketCreation;
*OT_API_AddBasketCreationItem = *otapic::OT_API_AddBasketCreationItem;
*OT_API_issueBasket = *otapic::OT_API_issueBasket;
*OT_API_GenerateBasketExchange = *otapic::OT_API_GenerateBasketExchange;
*OT_API_AddBasketExchangeItem = *otapic::OT_API_AddBasketExchangeItem;
*OT_API_exchangeBasket = *otapic::OT_API_exchangeBasket;
*OT_API_notarizeWithdrawal = *otapic::OT_API_notarizeWithdrawal;
*OT_API_notarizeDeposit = *otapic::OT_API_notarizeDeposit;
*OT_API_notarizeTransfer = *otapic::OT_API_notarizeTransfer;
*OT_API_getInbox = *otapic::OT_API_getInbox;
*OT_API_getOutbox = *otapic::OT_API_getOutbox;
*OT_API_getNymbox = *otapic::OT_API_getNymbox;
*OT_API_LoadNymbox = *otapic::OT_API_LoadNymbox;
*OT_API_processInbox = *otapic::OT_API_processInbox;
*OT_API_processNymbox = *otapic::OT_API_processNymbox;
*OT_API_withdrawVoucher = *otapic::OT_API_withdrawVoucher;
*OT_API_depositCheque = *otapic::OT_API_depositCheque;
*OT_API_depositPaymentPlan = *otapic::OT_API_depositPaymentPlan;
*OT_API_issueMarketOffer = *otapic::OT_API_issueMarketOffer;
*OT_API_PopMessageBuffer = *otapic::OT_API_PopMessageBuffer;
*OT_API_FlushMessageBuffer = *otapic::OT_API_FlushMessageBuffer;
*OT_API_Message_GetCommand = *otapic::OT_API_Message_GetCommand;
*OT_API_Message_GetSuccess = *otapic::OT_API_Message_GetSuccess;
*OT_API_Message_GetLedger = *otapic::OT_API_Message_GetLedger;
*OT_API_Message_GetNewAssetTypeID = *otapic::OT_API_Message_GetNewAssetTypeID;
*OT_API_Message_GetNewIssuerAcctID = *otapic::OT_API_Message_GetNewIssuerAcctID;
*OT_API_ConnectServer = *otapic::OT_API_ConnectServer;
*OT_API_ProcessSockets = *otapic::OT_API_ProcessSockets;

# ------- VARIABLE STUBS --------

package otapi;

1;
