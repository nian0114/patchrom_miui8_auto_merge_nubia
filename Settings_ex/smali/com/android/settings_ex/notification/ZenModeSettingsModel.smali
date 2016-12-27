.class public Lcom/android/settings_ex/notification/ZenModeSettingsModel;
.super Ljava/lang/Object;
.source "ZenModeSettingsModel.java"

# interfaces
.implements Lcom/android/settings_ex/notification/IZenModeSettingsModel;


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field protected mContext:Landroid/content/Context;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "ZenModeSettingsModel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public enableTimeZenMode(Z)Z
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 128
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    const-string v5, "ZenModeSettingsModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ZenModeConfig : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v2, 0x0

    .line 131
    .local v2, "mZenRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 132
    .local v3, "size":I
    const-string v5, "ZenModeSettingsModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "config.automaticRules.size() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-lez v3, :cond_0

    .line 134
    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mZenRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 135
    .restart local v2    # "mZenRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v5, 0x1

    iput v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 137
    :cond_0
    iget-object v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    .line 138
    .local v1, "mSchedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const-string v5, "ZenModeSettingsModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mZenRule before set : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v5, "ZenModeSettingsModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSchedule before set : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-ne p1, v5, :cond_1

    .line 146
    :goto_0
    return v4

    .line 141
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mContext:Landroid/content/Context;

    const/16 v6, 0xb0

    invoke-static {v5, v6, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 142
    sget-boolean v5, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "ZenModeSettingsModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSwitchChanged enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_2
    iput-boolean p1, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 144
    iput-boolean v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 145
    const-string v4, "ZenModeSettingsModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mZenRule after set : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v4

    goto :goto_0
.end method

.method public getSheduleInfo()Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 150
    const-string v4, "ZenModeSettingsModel"

    const-string v5, "getSheduleInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 152
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    const-string v4, "ZenModeSettingsModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v2, 0x0

    .line 155
    .local v2, "mZenRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v1

    .line 158
    :cond_1
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 159
    .local v3, "size":I
    const-string v4, "ZenModeSettingsModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config.automaticRules.size() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-lez v3, :cond_2

    .line 161
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mZenRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 163
    .restart local v2    # "mZenRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2
    const-string v4, "ZenModeSettingsModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mZenRule : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eqz v2, :cond_0

    .line 167
    const-string v4, "ZenModeSettingsModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mZenRule.conditionId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 171
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    .line 172
    .local v1, "mSchedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const-string v4, "ZenModeSettingsModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSchedule : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getZenMode()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mZenMode:I

    return v0
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mConfig:Landroid/service/notification/ZenModeConfig;

    goto :goto_0
.end method

.method public setSheduleInfo([IIIII)Z
    .locals 8
    .param p1, "days"    # [I
    .param p2, "startHour"    # I
    .param p3, "startMinute"    # I
    .param p4, "endHour"    # I
    .param p5, "endMinute"    # I

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 84
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    const/4 v2, 0x0

    .line 86
    .local v2, "mZenRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v4

    .line 89
    :cond_1
    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 90
    .local v3, "size":I
    const-string v5, "ZenModeSettingsModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "config.automaticRules.size() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-lez v3, :cond_2

    .line 92
    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mZenRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 94
    .restart local v2    # "mZenRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2
    if-eqz v2, :cond_0

    .line 97
    iget-object v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 100
    iget-object v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    .line 101
    .local v1, "mSchedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-eqz v1, :cond_0

    .line 104
    if-eqz p1, :cond_3

    .line 105
    iput-object p1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 107
    :cond_3
    if-ltz p2, :cond_4

    .line 108
    iput p2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 110
    :cond_4
    if-ltz p3, :cond_5

    .line 111
    iput p3, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 113
    :cond_5
    if-ltz p4, :cond_6

    .line 114
    iput p4, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 116
    :cond_6
    if-ltz p5, :cond_7

    .line 117
    iput p5, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 120
    :cond_7
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 121
    const/4 v5, 0x0

    iput-object v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 122
    iput-boolean v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v4

    goto :goto_0
.end method

.method public setZenMode(ILandroid/net/Uri;)V
    .locals 2
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "ZenModeSettingsModel"

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 5
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/app/NotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    move-result v1

    .line 30
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 31
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 32
    sget-boolean v2, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ZenModeSettingsModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved mConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return v1
.end method

.method public updateZenMode()Z
    .locals 4

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    iget v3, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mZenMode:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 60
    .local v0, "zenMode":I
    iget v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mZenMode:I

    if-ne v1, v0, :cond_0

    .line 61
    const/4 v1, 0x0

    .line 65
    :goto_0
    return v1

    .line 64
    :cond_0
    iput v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mZenMode:I

    .line 65
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateZenModeConfig()Z
    .locals 4

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 71
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 74
    :goto_0
    return v1

    .line 72
    :cond_0
    sget-boolean v1, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ZenModeSettingsModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateZenModeConfig mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsModel;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 74
    const/4 v1, 0x1

    goto :goto_0
.end method
