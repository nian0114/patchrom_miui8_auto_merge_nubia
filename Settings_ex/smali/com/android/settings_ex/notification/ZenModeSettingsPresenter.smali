.class public Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;
.super Ljava/lang/Object;
.source "ZenModeSettingsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$1;,
        Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSettingsObserver:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;

.field private mZenModeModel:Lcom/android/settings_ex/notification/IZenModeSettingsModel;

.field private mZenModeView:Lcom/android/settings_ex/notification/ZenModeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/notification/IZenModeSettingsModel;Lcom/android/settings_ex/notification/ZenModeListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/android/settings_ex/notification/IZenModeSettingsModel;
    .param p3, "view"    # Lcom/android/settings_ex/notification/ZenModeListener;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;-><init>(Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mSettingsObserver:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;

    .line 31
    iput-object p2, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mZenModeModel:Lcom/android/settings_ex/notification/IZenModeSettingsModel;

    .line 32
    iput-object p3, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mZenModeView:Lcom/android/settings_ex/notification/ZenModeListener;

    .line 33
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public enableTimingZenMode(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mZenModeModel:Lcom/android/settings_ex/notification/IZenModeSettingsModel;

    invoke-interface {v0, p1}, Lcom/android/settings_ex/notification/IZenModeSettingsModel;->enableTimeZenMode(Z)Z

    move-result v0

    return v0
.end method

.method public getAllowCallsFrom()I
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 151
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget v1, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    return v1
.end method

.method public getAllowContactsType()I
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode_tel_enable_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSheduleInfo()Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mZenModeModel:Lcom/android/settings_ex/notification/IZenModeSettingsModel;

    invoke-interface {v0}, Lcom/android/settings_ex/notification/IZenModeSettingsModel;->getSheduleInfo()Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    return-object v0
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mZenModeModel:Lcom/android/settings_ex/notification/IZenModeSettingsModel;

    invoke-interface {v0}, Lcom/android/settings_ex/notification/IZenModeSettingsModel;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method public isAllowCalls()Z
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    return v0
.end method

.method public isAllowEvents()Z
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllowMessages()Z
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    return v0
.end method

.method public isAllowRepeatCallers()Z
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    return v0
.end method

.method public isDowntimeSupported(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isZenModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 79
    const-string v1, "ZenModeSettingsPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode in isZenModeOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mZenModeModel:Lcom/android/settings_ex/notification/IZenModeSettingsModel;

    invoke-interface {v3}, Lcom/android/settings_ex/notification/IZenModeSettingsModel;->getZenMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mZenModeModel:Lcom/android/settings_ex/notification/IZenModeSettingsModel;

    invoke-interface {v1}, Lcom/android/settings_ex/notification/IZenModeSettingsModel;->getZenMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerObserver()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mSettingsObserver:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->register()V

    .line 134
    return-void
.end method

.method public setAllowCalls(Z)Z
    .locals 3
    .param p1, "allowable"    # Z

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 142
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-ne p1, v2, :cond_0

    .line 143
    const/4 v2, 0x1

    .line 146
    :goto_0
    return v2

    .line 144
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 145
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean p1, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 146
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    goto :goto_0
.end method

.method public setAllowCallsFrom(I)Z
    .locals 6
    .param p1, "val"    # I

    .prologue
    const/4 v5, 0x1

    .line 112
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode_tel_enable_type"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 115
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings_ex/profile/SleepWhiteListActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 119
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget v3, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-ne p1, v3, :cond_1

    .line 125
    :goto_0
    return v5

    .line 121
    :cond_1
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 122
    .local v2, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput p1, v2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 123
    iput p1, v2, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_0
.end method

.method public setAllowEvents(Z)Z
    .locals 3
    .param p1, "val"    # Z

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 156
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-ne p1, v2, :cond_0

    .line 157
    const/4 v2, 0x1

    .line 162
    :goto_0
    return v2

    .line 159
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 160
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean p1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 161
    iput-boolean p1, v1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 162
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    goto :goto_0
.end method

.method public setAllowMessages(Z)Z
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 100
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-ne p1, v2, :cond_0

    .line 101
    const/4 v2, 0x1

    .line 104
    :goto_0
    return v2

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 103
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean p1, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 104
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    goto :goto_0
.end method

.method public setAllowRepeatCalls(Z)Z
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 91
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-ne p1, v2, :cond_0

    .line 92
    const/4 v2, 0x1

    .line 95
    :goto_0
    return v2

    .line 93
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 94
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean p1, v1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 95
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    goto :goto_0
.end method

.method public setSheduleInfo([IIIII)Z
    .locals 6
    .param p1, "days"    # [I
    .param p2, "startHour"    # I
    .param p3, "startMinute"    # I
    .param p4, "endHour"    # I
    .param p5, "endMinute"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mZenModeModel:Lcom/android/settings_ex/notification/IZenModeSettingsModel;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/settings_ex/notification/IZenModeSettingsModel;->setSheduleInfo([IIIII)Z

    move-result v0

    return v0
.end method

.method public setZenMode(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mZenModeModel:Lcom/android/settings_ex/notification/IZenModeSettingsModel;

    invoke-interface {v0, p1, p2}, Lcom/android/settings_ex/notification/IZenModeSettingsModel;->setZenMode(ILandroid/net/Uri;)V

    .line 130
    return-void
.end method

.method public setZenMode(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    const-string v3, "ZenModeSettingsPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 66
    .local v0, "mode":I
    const-string v3, "ZenModeSettingsPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-ne v0, v1, :cond_0

    move v3, v1

    :goto_0
    if-ne p1, v3, :cond_1

    .line 68
    const-string v2, "ZenModeSettingsPresenter"

    const-string v3, "setZenMode return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_1
    return-void

    :cond_0
    move v3, v2

    .line 67
    goto :goto_0

    .line 71
    :cond_1
    if-eqz p1, :cond_2

    .line 73
    .local v1, "value":I
    :goto_2
    const-string v2, "ZenModeSettingsPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setZenMode value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zen_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->setZenMode(ILandroid/net/Uri;)V

    goto :goto_1

    .end local v1    # "value":I
    :cond_2
    move v1, v2

    .line 71
    goto :goto_2
.end method

.method public setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 2
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mZenModeModel:Lcom/android/settings_ex/notification/IZenModeSettingsModel;

    invoke-interface {v1, p1}, Lcom/android/settings_ex/notification/IZenModeSettingsModel;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    .line 52
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mZenModeView:Lcom/android/settings_ex/notification/ZenModeListener;

    invoke-interface {v1}, Lcom/android/settings_ex/notification/ZenModeListener;->onZenModeConfigChanged()V

    .line 55
    :cond_0
    return v0
.end method

.method public unRegisterObserver()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mSettingsObserver:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter$SettingsObserver;->unregister()V

    .line 138
    return-void
.end method

.method public updateZenMode(Z)V
    .locals 2
    .param p1, "fireChanged"    # Z

    .prologue
    .line 37
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mZenModeModel:Lcom/android/settings_ex/notification/IZenModeSettingsModel;

    invoke-interface {v1}, Lcom/android/settings_ex/notification/IZenModeSettingsModel;->updateZenMode()Z

    move-result v0

    .line 38
    .local v0, "isZenModeChanged":Z
    if-eqz p1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mZenModeView:Lcom/android/settings_ex/notification/ZenModeListener;

    invoke-interface {v1}, Lcom/android/settings_ex/notification/ZenModeListener;->onZenModeChanged()V

    .line 41
    :cond_0
    return-void
.end method

.method public updateZenModeConfig(Z)V
    .locals 2
    .param p1, "fireChanged"    # Z

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mZenModeModel:Lcom/android/settings_ex/notification/IZenModeSettingsModel;

    invoke-interface {v1}, Lcom/android/settings_ex/notification/IZenModeSettingsModel;->updateZenModeConfig()Z

    move-result v0

    .line 45
    .local v0, "isZenModeConfigChanged":Z
    if-eqz p1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->mZenModeView:Lcom/android/settings_ex/notification/ZenModeListener;

    invoke-interface {v1}, Lcom/android/settings_ex/notification/ZenModeListener;->onZenModeConfigChanged()V

    .line 48
    :cond_0
    return-void
.end method
