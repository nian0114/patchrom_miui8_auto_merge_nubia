.class final Lcom/android/settings_ex/notification/NotificationSettings$H;
.super Landroid/os/Handler;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 1

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    .line 657
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 658
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/notification/NotificationSettings;Lcom/android/settings_ex/notification/NotificationSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;
    .param p2, "x1"    # Lcom/android/settings_ex/notification/NotificationSettings$1;

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettings$H;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 662
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 685
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 664
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$200(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 667
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$600(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 671
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mSmsNotificationPreference:Lcom/android/settings_ex/MsgRingtonePreference;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2100(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/MsgRingtonePreference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/MsgRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 674
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mOneNubiaRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2200(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 677
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference1:Landroid/preference/RingtonePreference;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2300(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/RingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference1:Landroid/preference/RingtonePreference;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2300(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/RingtonePreference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2400(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2400(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
