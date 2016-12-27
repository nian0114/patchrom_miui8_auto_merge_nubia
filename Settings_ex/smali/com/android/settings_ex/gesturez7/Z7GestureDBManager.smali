.class public Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;
.super Ljava/lang/Object;
.source "Z7GestureDBManager.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 14
    return-void
.end method


# virtual methods
.method public getDBStatus(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 17
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getHandFree()Z
    .locals 1

    .prologue
    .line 133
    const-string v0, "key_hands_free"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDBReallyChanged(IZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 138
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    :pswitch_0
    return-void

    .line 140
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setWakeScreenChecked(Z)V

    goto :goto_0

    .line 143
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setPalmChecked(Z)V

    goto :goto_0

    .line 146
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setFreeSnapScreenChecked(Z)V

    goto :goto_0

    .line 149
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setThreeCaptureScreenChecked(Z)V

    goto :goto_0

    .line 152
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setThreeChangedChecked(Z)V

    goto :goto_0

    .line 155
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setLauncherSwitchChecked(Z)V

    goto :goto_0

    .line 159
    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setMotionCallChecked(Z)V

    goto :goto_0

    .line 162
    :pswitch_8
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setMotionAnswerChecked(Z)V

    goto :goto_0

    .line 165
    :pswitch_9
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setMotionTurnChecked(Z)V

    goto :goto_0

    .line 168
    :pswitch_a
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setMotionMusicChecked(Z)V

    goto :goto_0

    .line 171
    :pswitch_b
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setMotionShakeClearChecked(Z)V

    goto :goto_0

    .line 174
    :pswitch_c
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setMotionShakeUpdateChecked(Z)V

    goto :goto_0

    .line 178
    :pswitch_d
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setVolleySlideScreenChecked(Z)V

    goto :goto_0

    .line 181
    :pswitch_e
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setVolleyAnswerCallChecked(Z)V

    goto :goto_0

    .line 184
    :pswitch_f
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setVolleyBackForwardChecked(Z)V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public setDBStatus(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 22
    return-void
.end method

.method public setFreeSnapScreenChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    const-string v3, "key_free_snap"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 36
    const-string v0, "free_snapshot"

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 37
    return-void

    :cond_0
    move v0, v2

    .line 35
    goto :goto_0

    :cond_1
    move v1, v2

    .line 36
    goto :goto_1
.end method

.method public setHandFree(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 129
    const-string v1, "key_hands_free"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 130
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLauncherSwitchChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    const-string v3, "key_launcher_switch"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 52
    const-string v0, "statusbar_switch_preference"

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 53
    return-void

    :cond_0
    move v0, v2

    .line 51
    goto :goto_0

    :cond_1
    move v1, v2

    .line 52
    goto :goto_1
.end method

.method public setMotionAnswerChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    const-string v3, "key_sensory_answer"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 70
    if-eqz p1, :cond_2

    .line 71
    const-string v0, "motion_pickanswer"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 78
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 69
    goto :goto_0

    .line 73
    :cond_2
    const-string v0, "key_sensory_dial"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const-string v0, "motion_pickanswer"

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public setMotionCallChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    const-string v3, "key_sensory_dial"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 58
    if-eqz p1, :cond_2

    .line 59
    const-string v0, "motion_pickanswer"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 66
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 57
    goto :goto_0

    .line 61
    :cond_2
    const-string v0, "key_sensory_answer"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const-string v0, "motion_pickanswer"

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public setMotionMusicChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    const-string v3, "key_rl_shake"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 87
    const-string v0, "motion_rlshake"

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 88
    return-void

    :cond_0
    move v0, v2

    .line 86
    goto :goto_0

    :cond_1
    move v1, v2

    .line 87
    goto :goto_1
.end method

.method public setMotionShakeClearChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    const-string v3, "key_shake_clear"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 92
    if-eqz p1, :cond_2

    .line 93
    const-string v0, "motion_shake"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 100
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 91
    goto :goto_0

    .line 95
    :cond_2
    const-string v0, "key_shake_update"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const-string v0, "motion_shake"

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public setMotionShakeUpdateChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    const-string v3, "key_shake_update"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 104
    if-eqz p1, :cond_2

    .line 105
    const-string v0, "motion_shake"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 112
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 103
    goto :goto_0

    .line 107
    :cond_2
    const-string v0, "key_shake_clear"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const-string v0, "motion_shake"

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public setMotionTurnChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    const-string v3, "key_turn_over"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 82
    const-string v0, "motion_turnover"

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 83
    return-void

    :cond_0
    move v0, v2

    .line 81
    goto :goto_0

    :cond_1
    move v1, v2

    .line 82
    goto :goto_1
.end method

.method public setPalmChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    const-string v3, "key_palm_lock"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 31
    const-string v0, "palm_cover"

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 32
    return-void

    :cond_0
    move v0, v2

    .line 30
    goto :goto_0

    :cond_1
    move v1, v2

    .line 31
    goto :goto_1
.end method

.method public setThreeCaptureScreenChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    const-string v3, "key_free_finger_cap"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 41
    const-string v0, "multi_point_up"

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 42
    return-void

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    :cond_1
    move v1, v2

    .line 41
    goto :goto_1
.end method

.method public setThreeChangedChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    const-string v3, "key_three_finger_change_app"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 46
    const-string v3, "multi_point_left"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 47
    const-string v0, "multi_point_right"

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 48
    return-void

    :cond_0
    move v0, v2

    .line 45
    goto :goto_0

    :cond_1
    move v0, v2

    .line 46
    goto :goto_1

    :cond_2
    move v1, v2

    .line 47
    goto :goto_2
.end method

.method public setVolleyAnswerCallChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 120
    const-string v1, "key_answer_call"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 121
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVolleyBackForwardChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 124
    const-string v1, "key_forward_back"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 125
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVolleySlideScreenChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    const-string v3, "key_slide_screen"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 116
    const-string v0, "slide_screen"

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 117
    return-void

    :cond_0
    move v0, v2

    .line 115
    goto :goto_0

    :cond_1
    move v1, v2

    .line 116
    goto :goto_1
.end method

.method public setWakeScreenChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    const-string v3, "key_double_click"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 26
    const-string v0, "double_click_wake"

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 27
    return-void

    :cond_0
    move v0, v2

    .line 25
    goto :goto_0

    :cond_1
    move v1, v2

    .line 26
    goto :goto_1
.end method
