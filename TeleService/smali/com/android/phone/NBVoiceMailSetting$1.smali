.class Lcom/android/phone/NBVoiceMailSetting$1;
.super Landroid/os/Handler;
.source "NBVoiceMailSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBVoiceMailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBVoiceMailSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NBVoiceMailSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBVoiceMailSetting$1;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting$1;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    # getter for: Lcom/android/phone/NBVoiceMailSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/NBVoiceMailSetting;->access$000(Lcom/android/phone/NBVoiceMailSetting;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
