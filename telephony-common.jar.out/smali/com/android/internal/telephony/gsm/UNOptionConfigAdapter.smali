.class public Lcom/android/internal/telephony/gsm/UNOptionConfigAdapter;
.super Ljava/lang/Object;
.source "UNOptionConfigAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ConvertUSSD(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 26
    return-object p1
.end method

.method public isTtySupported(Z)Z
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 29
    return p1
.end method
