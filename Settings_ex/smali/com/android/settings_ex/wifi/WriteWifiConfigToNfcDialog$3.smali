.class Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog$3;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog$3;->this$0:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog$3;->this$0:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    # invokes: Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;->enableSubmitIfAppropriate()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;->access$200(Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;)V

    .line 240
    return-void
.end method
