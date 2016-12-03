.class public Lcom/android/phone/NBQCMBNHelper;
.super Ljava/lang/Object;
.source "NBQCMBNHelper.java"


# static fields
.field private static final mOperatorMBN:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final SUB0:I

.field private final SUB1:I

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mSubMBN:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/NBQCMBNHelper;->mOperatorMBN:Ljava/util/HashMap;

    sget-object v0, Lcom/android/phone/NBQCMBNHelper;->mOperatorMBN:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Volte_OpenMkt-Commercial-CMCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/NBQCMBNHelper;->mOperatorMBN:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OpenMkt-Commercial-CU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/NBQCMBNHelper;->mOperatorMBN:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OpenMkt-Commercial-CT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/NBQCMBNHelper;->mOperatorMBN:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Gen_3GPP-ROW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NBQCMBNHelper;->mSubMBN:Ljava/util/HashMap;

    const-string v0, "NBQCMBNHelper"

    iput-object v0, p0, Lcom/android/phone/NBQCMBNHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NBQCMBNHelper;->SUB0:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/NBQCMBNHelper;->SUB1:I

    iput-object p1, p0, Lcom/android/phone/NBQCMBNHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private equalsOtherPhoneStack(II)Z
    .locals 5
    .param p1, "subOfPhone1"    # I
    .param p2, "subOfPhone2"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getStackOfSlot()[I

    move-result-object v0

    .local v0, "stackId":[I
    if-ne p2, v4, :cond_0

    if-eq p1, v4, :cond_0

    aget v3, v0, v2

    if-ne v3, p1, :cond_1

    :cond_0
    if-ne p1, v4, :cond_2

    if-eq p2, v4, :cond_2

    aget v3, v0, v1

    if-eq v3, p2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private findSubDependMBN(Ljava/lang/String;)I
    .locals 3
    .param p1, "mbn"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/phone/NBQCMBNHelper;->mSubMBN:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getOperatorCode(I)I
    .locals 4
    .param p1, "slot"    # I

    .prologue
    const/4 v0, -0x1

    .local v0, "code":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .local v2, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-static {}, Lcom/android/phone/NBDsdsBase;->getCardStateMonitor()Lcom/android/phone/CardStateMonitor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "iccId":Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/phone/NBDsdsUtils;->isChinaTelecom(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-static {v2, v1}, Lcom/android/phone/NBDsdsUtils;->isChinaMobile(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v2, v1}, Lcom/android/phone/NBDsdsUtils;->isChinaUnicom(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getOperatorMBN(I)Ljava/lang/String;
    .locals 2
    .param p1, "slot"    # I

    .prologue
    sget-object v0, Lcom/android/phone/NBQCMBNHelper;->mOperatorMBN:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/phone/NBQCMBNHelper;->getOperatorCode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getSupportMBNSub(I)I
    .locals 7
    .param p1, "slot"    # I

    .prologue
    const/4 v3, -0x1

    .local v3, "sub":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    .local v4, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v5, v6, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/NBQCMBNHelper;->getOperatorMBN(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "mbn":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getStackOfSlot()[I

    move-result-object v1

    .local v1, "stackId":[I
    aget v2, v1, p1

    .local v2, "stackOfSlot":I
    iget-object v5, p0, Lcom/android/phone/NBQCMBNHelper;->mSubMBN:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v2

    .end local v0    # "mbn":Ljava/lang/String;
    .end local v1    # "stackId":[I
    .end local v2    # "stackOfSlot":I
    :cond_0
    :goto_0
    return v3

    .restart local v0    # "mbn":Ljava/lang/String;
    .restart local v1    # "stackId":[I
    .restart local v2    # "stackOfSlot":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/NBQCMBNHelper;->findSubDependMBN(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method private hasOnlyOneCardAvailable()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v3, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    if-ge v1, v3, :cond_1

    invoke-static {v1}, Lcom/android/phone/NBDsdsUtils;->isCardPresent(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isOtherSubSupport(II)Z
    .locals 1
    .param p1, "subOfPhone1"    # I
    .param p2, "subOfPhone2"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBQCMBNHelper;->hasOnlyOneCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/NBQCMBNHelper;->equalsOtherPhoneStack(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareMBN([Ljava/lang/String;I)V
    .locals 8
    .param p1, "allMBNInfo"    # [Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    .local v4, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v6, v7, :cond_0

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getLogicFuturePrimaryCard()I

    move-result v6

    if-ne p2, v6, :cond_1

    const/4 v2, 0x0

    .local v2, "sub":I
    :goto_0
    invoke-static {}, Lcom/android/phone/NBDsdsBase;->getCardStateMonitor()Lcom/android/phone/CardStateMonitor;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/phone/CardStateMonitor;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/phone/NBDsdsUtils;->isChinaTelecom(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-ne v2, v5, :cond_2

    .end local v0    # "iccId":Ljava/lang/String;
    .end local v2    # "sub":I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    .restart local v0    # "iccId":Ljava/lang/String;
    .restart local v2    # "sub":I
    :cond_2
    invoke-direct {p0, v4, v0}, Lcom/android/phone/NBQCMBNHelper;->supportUiccCardOperator(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/NBQCMBNHelper;->mSubMBN:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "mbnInfo":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/phone/NBQCMBNHelper;->getOperatorMBN(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "targetMbnInfo":Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    aput-object v3, p1, v2

    goto :goto_1
.end method

.method private supportUiccCardOperator(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Z
    .locals 6
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, p2}, Lcom/android/phone/NBDsdsUtils;->isChinaMobile(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->supportTDSCDMAMode()Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    .local v0, "noMobileOperator":Z
    :goto_0
    invoke-static {p1, p2}, Lcom/android/phone/NBDsdsUtils;->isChinaTelecom(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->supportCDMAMode()Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    .local v1, "noTelecomOperator":Z
    :goto_1
    invoke-static {p1, p2}, Lcom/android/phone/NBDsdsUtils;->isChinaUnicom(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->supportWCDMAMode()Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v3

    .local v2, "noUnicomOperator":Z
    :goto_2
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    return v3

    .end local v0    # "noMobileOperator":Z
    .end local v1    # "noTelecomOperator":Z
    .end local v2    # "noUnicomOperator":Z
    :cond_2
    move v0, v4

    goto :goto_0

    .restart local v0    # "noMobileOperator":Z
    :cond_3
    move v1, v4

    goto :goto_1

    .restart local v1    # "noTelecomOperator":Z
    :cond_4
    move v2, v4

    goto :goto_2
.end method


# virtual methods
.method public getAllNeedMBNInfo()[Ljava/lang/String;
    .locals 4

    .prologue
    sget v3, Lcom/android/phone/NBDsdsUtils;->PHONE_COUNT:I

    new-array v0, v3, [Ljava/lang/String;

    .local v0, "allMBNInfo":[Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .local v2, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NBQCMBNHelper;->prepareMBN([Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getWillPrimaryByMBN()I
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/phone/NBQCMBNHelper;->getSupportMBNSub(I)I

    move-result v2

    .local v2, "subOfPhone1":I
    invoke-direct {p0, v5}, Lcom/android/phone/NBQCMBNHelper;->getSupportMBNSub(I)I

    move-result v3

    .local v3, "subOfPhone2":I
    const-string v7, "NBQCMBNHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subOfPhone1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", subOfPhone2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    .local v4, "willPrimary":I
    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v4

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v7

    if-nez v7, :cond_1

    move v0, v5

    .local v0, "otherSlot":I
    :goto_1
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getStackOfSlot()[I

    move-result-object v1

    .local v1, "stackId":[I
    aget v5, v1, v5

    if-ne v2, v5, :cond_2

    aget v5, v1, v6

    if-ne v3, v5, :cond_2

    move v4, v0

    goto :goto_0

    .end local v0    # "otherSlot":I
    .end local v1    # "stackId":[I
    :cond_1
    move v0, v6

    goto :goto_1

    .restart local v0    # "otherSlot":I
    .restart local v1    # "stackId":[I
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/android/phone/NBQCMBNHelper;->isOtherSubSupport(II)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v4

    goto :goto_0
.end method

.method public isMbnMechanism()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "support":Z
    :try_start_0
    invoke-static {}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getInstance()Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->isMbnMechanism()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public needMBNSwitch()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x1

    .local v0, "needed":Z
    invoke-direct {p0, v6}, Lcom/android/phone/NBQCMBNHelper;->getSupportMBNSub(I)I

    move-result v3

    .local v3, "subOfPhone1":I
    invoke-direct {p0, v5}, Lcom/android/phone/NBQCMBNHelper;->getSupportMBNSub(I)I

    move-result v4

    .local v4, "subOfPhone2":I
    const-string v7, "NBQCMBNHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subOfPhone1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", subOfPhone2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v4, :cond_2

    invoke-static {v6}, Lcom/android/phone/NBDsdsUtils;->isCardPresent(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v5}, Lcom/android/phone/NBDsdsUtils;->isCardPresent(I)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/NBQCMBNHelper;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/phone/NBDsdsUtils;->isChinaTelecom(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/NBQCMBNHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/android/phone/NBDsdsUtils;->isChinaTelecom(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getPrimarySub()I

    move-result v7

    if-nez v7, :cond_3

    move v1, v5

    .local v1, "otherSlot":I
    :goto_1
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->getStackOfSlot()[I

    move-result-object v2

    .local v2, "stackId":[I
    aget v7, v2, v5

    if-ne v3, v7, :cond_4

    aget v7, v2, v6

    if-ne v4, v7, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    .end local v1    # "otherSlot":I
    .end local v2    # "stackId":[I
    :cond_3
    move v1, v6

    goto :goto_1

    .restart local v1    # "otherSlot":I
    .restart local v2    # "stackId":[I
    :cond_4
    invoke-direct {p0, v3, v4}, Lcom/android/phone/NBQCMBNHelper;->isOtherSubSupport(II)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    aget v7, v2, v6

    if-ne v3, v7, :cond_6

    aget v7, v2, v5

    if-ne v4, v7, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    aget v7, v2, v6

    if-ne v3, v7, :cond_7

    invoke-static {v5}, Lcom/android/phone/NBDsdsUtils;->isCardPresent(I)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    aget v5, v2, v5

    if-ne v4, v5, :cond_0

    invoke-static {v6}, Lcom/android/phone/NBDsdsUtils;->isCardPresent(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSubMBN()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/NBQCMBNController;->getInstance()Lcom/android/phone/NBQCMBNController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/phone/NBQCMBNController;->getActiveMbnInfo(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "mbnSub0":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NBQCMBNController;->getInstance()Lcom/android/phone/NBQCMBNController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/phone/NBQCMBNController;->getActiveMbnInfo(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "mbnSub1":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBQCMBNHelper;->mSubMBN:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/phone/NBQCMBNHelper;->mSubMBN:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_0
    const-string v2, "NBQCMBNHelper"

    const-string v3, "mbnSub0 is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "NBQCMBNHelper"

    const-string v3, "mbnSub1 is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
