.class public abstract Lcom/android/phone/NBNetworkMode;
.super Ljava/lang/Object;
.source "NBNetworkMode.java"


# instance fields
.field private mHardwareId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "hardwareId"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/phone/NBNetworkMode;->mHardwareId:I

    return-void
.end method


# virtual methods
.method public abstract get3G4GEntries()I
.end method

.method public abstract getEntryValues()I
.end method

.method public abstract getNetworkModeValue()I
.end method

.method public supportLTE()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/phone/NBNetworkMode;->mHardwareId:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportTDSCDMA()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/phone/NBNetworkMode;->mHardwareId:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportWCDMA()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/phone/NBNetworkMode;->mHardwareId:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
