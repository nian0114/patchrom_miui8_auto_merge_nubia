.class public Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;
.super Landroid/app/DialogFragment;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WpsFragment"
.end annotation


# static fields
.field private static mWpsSetup:I


# instance fields
.field private mWpsDialog:Lcom/android/settings_ex/wifi/WpsDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 418
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "wpsSetup"    # I

    .prologue
    .line 421
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 422
    sput p1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;->mWpsSetup:I

    .line 423
    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;->onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lcn/nubia/commonui/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 428
    new-instance v0, Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;->mWpsSetup:I

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;->mWpsDialog:Lcom/android/settings_ex/wifi/WpsDialog;

    .line 429
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;->mWpsDialog:Lcom/android/settings_ex/wifi/WpsDialog;

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 434
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 435
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;->mWpsDialog:Lcom/android/settings_ex/wifi/WpsDialog;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;->mWpsDialog:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->registerReceiver()V

    .line 439
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 443
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 444
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;->mWpsDialog:Lcom/android/settings_ex/wifi/WpsDialog;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;->mWpsDialog:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->unregisterReceiver()V

    .line 448
    :cond_0
    return-void
.end method
