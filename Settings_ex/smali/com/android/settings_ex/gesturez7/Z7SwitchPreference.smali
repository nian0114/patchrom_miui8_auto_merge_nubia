.class public Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;
.super Landroid/preference/Preference;
.source "Z7SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$1;,
        Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

.field private final mListener:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$Listener;

.field private mType:I

.field private pv:Lcom/android/settings_ex/gesturez7/Z7PVAntiInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$Listener;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$Listener;-><init>(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mListener:Lcom/android/settings_ex/gesturez7/Z7SwitchPreference$Listener;

    .line 26
    iput-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->pv:Lcom/android/settings_ex/gesturez7/Z7PVAntiInterface;

    .line 65
    new-instance v0, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setPersistent(Z)V

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    .prologue
    .line 20
    iget v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;)Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->setDBFromCheck(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;)Lcom/android/settings_ex/gesturez7/Z7PVAntiInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->pv:Lcom/android/settings_ex/gesturez7/Z7PVAntiInterface;

    return-object v0
.end method

.method private setDBFromCheck(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    iget v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 218
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_double_click"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "double_click_wake"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_palm_lock"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "palm_cover"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 139
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_free_snap"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "free_snapshot"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 143
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_free_finger_cap"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "multi_point_up"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 147
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_three_finger_change_app"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "multi_point_left"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "multi_point_right"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 153
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_launcher_switch"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "statusbar_switch_preference"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 159
    :pswitch_7
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_sensory_dial"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 160
    if-lez p1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "motion_pickanswer"

    invoke-virtual {v0, v1, v3}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 163
    :cond_1
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "motion_pickanswer"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 169
    :pswitch_8
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_sensory_answer"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 170
    if-lez p1, :cond_2

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "motion_pickanswer"

    invoke-virtual {v0, v1, v3}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 173
    :cond_2
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "motion_pickanswer"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 179
    :pswitch_9
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_turn_over"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "motion_turnover"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 183
    :pswitch_a
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_rl_shake"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "motion_rlshake"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 187
    :pswitch_b
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_shake_clear"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 188
    if-lez p1, :cond_3

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "motion_shake"

    invoke-virtual {v0, v1, v3}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 191
    :cond_3
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "motion_shake"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 197
    :pswitch_c
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_shake_update"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 198
    if-lez p1, :cond_4

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "motion_shake"

    invoke-virtual {v0, v1, v3}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 201
    :cond_4
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "motion_shake"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 208
    :pswitch_d
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_slide_screen"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "slide_screen"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 212
    :pswitch_e
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_answer_call"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 215
    :pswitch_f
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v1, "key_forward_back"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 129
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


# virtual methods
.method public getCheckedFromDB(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "isChecked":Z
    packed-switch p1, :pswitch_data_0

    .line 120
    :goto_0
    :pswitch_0
    return v0

    .line 73
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "key_double_click"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    .line 74
    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "key_palm_lock"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    .line 77
    goto :goto_0

    .line 79
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "key_free_snap"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    .line 80
    goto :goto_0

    .line 82
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "key_free_finger_cap"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    .line 83
    goto :goto_0

    .line 85
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "key_three_finger_change_app"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    .line 86
    goto :goto_0

    .line 88
    :pswitch_6
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "key_launcher_switch"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    .line 89
    goto :goto_0

    .line 92
    :pswitch_7
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "key_sensory_dial"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    .line 93
    goto :goto_0

    .line 95
    :pswitch_8
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "key_sensory_answer"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    .line 96
    goto :goto_0

    .line 98
    :pswitch_9
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "key_turn_over"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    .line 99
    goto :goto_0

    .line 101
    :pswitch_a
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "key_rl_shake"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    .line 102
    goto :goto_0

    .line 104
    :pswitch_b
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "key_shake_clear"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    .line 105
    goto :goto_0

    .line 107
    :pswitch_c
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "key_shake_update"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    .line 108
    goto :goto_0

    .line 111
    :pswitch_d
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "key_slide_screen"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    .line 112
    goto :goto_0

    .line 114
    :pswitch_e
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "key_answer_call"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    .line 115
    goto :goto_0

    .line 117
    :pswitch_f
    iget-object v1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "key_forward_back"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->getDBStatus(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 71
    nop

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

.method public getExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 368
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 369
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "type"

    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 370
    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public setTotalChanged(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    if-nez p1, :cond_1

    .line 223
    iget v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 360
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 225
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "double_click_wake"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 228
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "palm_cover"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 231
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "free_snapshot"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 234
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "multi_point_up"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 237
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "multi_point_left"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "multi_point_right"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 241
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "statusbar_switch_preference"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 245
    :pswitch_7
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "motion_pickanswer"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 248
    :pswitch_8
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "motion_pickanswer"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 251
    :pswitch_9
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "motion_turnover"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 254
    :pswitch_a
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "motion_rlshake"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 257
    :pswitch_b
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "motion_shake"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 260
    :pswitch_c
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "motion_shake"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 264
    :pswitch_d
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v2, "slide_screen"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 272
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    packed-switch v2, :pswitch_data_1

    :pswitch_e
    goto :goto_0

    .line 274
    :pswitch_f
    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v3, "double_click_wake"

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 280
    :pswitch_10
    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v3, "palm_cover"

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 286
    :pswitch_11
    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v3, "statusbar_switch_preference"

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v2, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_3

    .line 292
    :pswitch_12
    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v3, "free_snapshot"

    if-eqz p1, :cond_5

    :goto_4
    invoke-virtual {v2, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_4

    .line 298
    :pswitch_13
    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v3, "multi_point_up"

    if-eqz p1, :cond_6

    :goto_5
    invoke-virtual {v2, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_5

    .line 304
    :pswitch_14
    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    iget-object v3, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v4, "multi_point_left"

    if-eqz p1, :cond_7

    move v2, v0

    :goto_6
    invoke-virtual {v3, v4, v2}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    .line 307
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v3, "multi_point_right"

    if-eqz p1, :cond_8

    :goto_7
    invoke-virtual {v2, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    move v2, v1

    .line 305
    goto :goto_6

    :cond_8
    move v0, v1

    .line 307
    goto :goto_7

    .line 313
    :pswitch_15
    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v3, "motion_pickanswer"

    if-eqz p1, :cond_9

    :goto_8
    invoke-virtual {v2, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_8

    .line 319
    :pswitch_16
    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v3, "motion_pickanswer"

    if-eqz p1, :cond_a

    :goto_9
    invoke-virtual {v2, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_9

    .line 325
    :pswitch_17
    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v3, "motion_turnover"

    if-eqz p1, :cond_b

    :goto_a
    invoke-virtual {v2, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_a

    .line 331
    :pswitch_18
    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v3, "motion_rlshake"

    if-eqz p1, :cond_c

    :goto_b
    invoke-virtual {v2, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_b

    .line 337
    :pswitch_19
    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v3, "motion_shake"

    if-eqz p1, :cond_d

    :goto_c
    invoke-virtual {v2, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto :goto_c

    .line 343
    :pswitch_1a
    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v3, "motion_shake"

    if-eqz p1, :cond_e

    :goto_d
    invoke-virtual {v2, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto :goto_d

    .line 350
    :pswitch_1b
    iget v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->getCheckedFromDB(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->dbManager:Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;

    const-string v3, "slide_screen"

    if-eqz p1, :cond_f

    :goto_e
    invoke-virtual {v2, v3, v0}, Lcom/android/settings_ex/gesturez7/Z7GestureDBManager;->setDBStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto :goto_e

    .line 223
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

    .line 272
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_1b
        :pswitch_0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public setType(I)V
    .locals 0
    .param p1, "mType"    # I

    .prologue
    .line 378
    iput p1, p0, Lcom/android/settings_ex/gesturez7/Z7SwitchPreference;->mType:I

    .line 379
    return-void
.end method
