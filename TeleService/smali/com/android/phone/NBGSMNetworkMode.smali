.class public Lcom/android/phone/NBGSMNetworkMode;
.super Lcom/android/phone/NBNetworkMode;
.source "NBGSMNetworkMode.java"


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
    invoke-virtual {p0}, Lcom/android/phone/NBGSMNetworkMode;->supportLTE()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0023

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0a0025

    goto :goto_0
.end method

.method public getEntryValues()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/phone/NBGSMNetworkMode;->supportLTE()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/NBGSMNetworkMode;->supportTDSCDMA()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBGSMNetworkMode;->supportWCDMA()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0027

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NBGSMNetworkMode;->supportTDSCDMA()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a0029

    goto :goto_0

    :cond_1
    const v0, 0x7f0a002b

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/NBGSMNetworkMode;->supportTDSCDMA()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/NBGSMNetworkMode;->supportWCDMA()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a0028

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/NBGSMNetworkMode;->supportTDSCDMA()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0a002a

    goto :goto_0

    :cond_4
    const v0, 0x7f0a002c

    goto :goto_0
.end method

.method public getNetworkModeValue()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/phone/NBGSMNetworkMode;->supportLTE()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/NBGSMNetworkMode;->supportTDSCDMA()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NBGSMNetworkMode;->supportWCDMA()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NBGSMNetworkMode;->supportTDSCDMA()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/NBGSMNetworkMode;->supportTDSCDMA()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/NBGSMNetworkMode;->supportWCDMA()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x12

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/NBGSMNetworkMode;->supportTDSCDMA()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x10

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method
