.class final Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeSettingsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_CONFIG_TIMING_ZEN_MODE:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;)V
    .locals 1

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    .line 191
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 184
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 185
    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    .line 187
    const-string v0, "timing_zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->ZEN_MODE_CONFIG_TIMING_ZEN_MODE:Landroid/net/Uri;

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;
    .param p2, "x1"    # Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$1;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;-><init>(Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    .line 209
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 210
    const-string v0, "ZenModeSettingsPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->ZEN_MODE_CONFIG_TIMING_ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->updateZenMode(Z)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->updateZenModeConfig(Z)V

    .line 219
    :cond_2
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->access$100(Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->access$100(Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->access$100(Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->ZEN_MODE_CONFIG_TIMING_ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 201
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->access$100(Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 205
    return-void
.end method
