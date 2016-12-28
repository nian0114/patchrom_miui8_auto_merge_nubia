.class public Lcom/android/internal/telephony/gsm/USOptionConfigAdapter;
.super Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;
.source "USOptionConfigAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public isTtySupported(Z)Z
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
