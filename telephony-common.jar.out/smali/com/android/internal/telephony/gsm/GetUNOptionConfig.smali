.class public Lcom/android/internal/telephony/gsm/GetUNOptionConfig;
.super Ljava/lang/Object;
.source "GetUNOptionConfig.java"


# static fields
.field private static countryId:Ljava/lang/String;

.field private static mAdapter:Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getAdapter(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;
    .locals 1
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lcom/android/internal/telephony/gsm/GetUNOptionConfig;->mAdapter:Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;

    if-nez v0, :cond_0

    .line 29
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GetUNOptionConfig;->getAdapterAccordCountry(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GetUNOptionConfig;->mAdapter:Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;

    .line 31
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gsm/GetUNOptionConfig;->mAdapter:Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;

    return-object v0
.end method

.method private static getAdapterAccordCountry(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;
    .locals 2
    .param p0, "countryId"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v1, "RU"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    new-instance v0, Lcom/android/internal/telephony/gsm/RUOptionConfigAdapter;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/RUOptionConfigAdapter;-><init>()V

    .line 45
    .local v0, "adapter":Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;
    :goto_0
    return-object v0

    .line 38
    .end local v0    # "adapter":Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;
    :cond_0
    const-string v1, "CZ"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    new-instance v0, Lcom/android/internal/telephony/gsm/CZOptionConfigAdapter;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/CZOptionConfigAdapter;-><init>()V

    .restart local v0    # "adapter":Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;
    goto :goto_0

    .line 40
    .end local v0    # "adapter":Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;
    :cond_1
    const-string v1, "US"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    new-instance v0, Lcom/android/internal/telephony/gsm/USOptionConfigAdapter;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/USOptionConfigAdapter;-><init>()V

    .restart local v0    # "adapter":Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;
    goto :goto_0

    .line 43
    .end local v0    # "adapter":Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;-><init>()V

    .restart local v0    # "adapter":Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;
    goto :goto_0
.end method
