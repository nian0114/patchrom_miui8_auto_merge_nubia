.class Lcom/android/settings_ex/msim/NBMsimSettings$DataEnableSettingObserver;
.super Landroid/database/ContentObserver;
.source "NBMsimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/msim/NBMsimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataEnableSettingObserver"
.end annotation


# instance fields
.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/settings_ex/msim/NBMsimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/msim/NBMsimSettings;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 930
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$DataEnableSettingObserver;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    .line 931
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 932
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings$DataEnableSettingObserver;->mResolver:Landroid/content/ContentResolver;

    .line 933
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings$DataEnableSettingObserver;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mMainHandler:Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;
    invoke-static {v0}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$000(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/msim/NBMsimSettings$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 953
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 936
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings$DataEnableSettingObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "nubia_mobile_data0"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 940
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings$DataEnableSettingObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "nubia_mobile_data1"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 944
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings$DataEnableSettingObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 948
    return-void
.end method
