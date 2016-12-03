.class public Lcom/android/phone/NBCDMANetworkMode;
.super Lcom/android/phone/NBNetworkMode;
.source "NBCDMANetworkMode.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "hardwareId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBNetworkMode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public get3G4GEntries()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportSrLte()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBCDMANetworkMode;->supportLTE()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0024

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0a0026

    goto :goto_0
.end method

.method public getEntryValues()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportSrLte()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBCDMANetworkMode;->supportLTE()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a002d

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0a002e

    goto :goto_0
.end method

.method public getNetworkModeValue()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/phone/NBDsdsUtils;->isSupportSrLte()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBCDMANetworkMode;->supportLTE()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
