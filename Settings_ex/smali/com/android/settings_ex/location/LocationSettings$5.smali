.class Lcom/android/settings_ex/location/LocationSettings$5;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/location/LocationSettings;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/settings_ex/location/LocationSettings$5;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 340
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 341
    .local v0, "chooseValue":Z
    if-eqz v0, :cond_1

    .line 343
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings$5;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v2}, Lcom/android/settings_ex/location/LocationSettings;->access$300(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings$5;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v2}, Lcom/android/settings_ex/location/LocationSettings;->access$300(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/location/XT/IXTSrv;->showDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 351
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings$5;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v2}, Lcom/android/settings_ex/location/LocationSettings;->access$300(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings$5;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # getter for: Lcom/android/settings_ex/location/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v2}, Lcom/android/settings_ex/location/LocationSettings;->access$300(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/location/XT/IXTSrv;->disable()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 354
    :catch_1
    move-exception v1

    .line 355
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
