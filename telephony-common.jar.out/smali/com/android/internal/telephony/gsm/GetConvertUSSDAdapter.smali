.class public Lcom/android/internal/telephony/gsm/GetConvertUSSDAdapter;
.super Ljava/lang/Object;
.source "GetConvertUSSDAdapter.java"


# static fields
.field private static countryId:Ljava/lang/String;

.field private static mAdapter:Lcom/android/internal/telephony/gsm/ConvertUSSDAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getAdapter(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/ConvertUSSDAdapter;
    .locals 1
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lcom/android/internal/telephony/gsm/GetConvertUSSDAdapter;->mAdapter:Lcom/android/internal/telephony/gsm/ConvertUSSDAdapter;

    if-nez v0, :cond_0

    .line 29
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GetConvertUSSDAdapter;->getAdapterAccordCountry(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/ConvertUSSDAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GetConvertUSSDAdapter;->mAdapter:Lcom/android/internal/telephony/gsm/ConvertUSSDAdapter;

    .line 31
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gsm/GetConvertUSSDAdapter;->mAdapter:Lcom/android/internal/telephony/gsm/ConvertUSSDAdapter;

    return-object v0
.end method

.method private static getAdapterAccordCountry(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/ConvertUSSDAdapter;
    .locals 2
    .param p0, "countryId"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v1, "RU"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    new-instance v0, Lcom/android/internal/telephony/gsm/RUConvertUSSDAdapter;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/RUConvertUSSDAdapter;-><init>()V

    .line 43
    .local v0, "adapter":Lcom/android/internal/telephony/gsm/ConvertUSSDAdapter;
    :goto_0
    return-object v0

    .line 38
    .end local v0    # "adapter":Lcom/android/internal/telephony/gsm/ConvertUSSDAdapter;
    :cond_0
    const-string v1, "CZ"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    new-instance v0, Lcom/android/internal/telephony/gsm/CZConvertUSSDAdapter;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/CZConvertUSSDAdapter;-><init>()V

    .restart local v0    # "adapter":Lcom/android/internal/telephony/gsm/ConvertUSSDAdapter;
    goto :goto_0

    .line 41
    .end local v0    # "adapter":Lcom/android/internal/telephony/gsm/ConvertUSSDAdapter;
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/gsm/ConvertUSSDAdapter;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/ConvertUSSDAdapter;-><init>()V

    .restart local v0    # "adapter":Lcom/android/internal/telephony/gsm/ConvertUSSDAdapter;
    goto :goto_0
.end method
