.class Lcom/android/phone/NBVoiceMailSetting$5;
.super Ljava/lang/Object;
.source "NBVoiceMailSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBVoiceMailSetting;->initRingtoneRunnable()V
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
    iput-object p1, p0, Lcom/android/phone/NBVoiceMailSetting$5;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting$5;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    # getter for: Lcom/android/phone/NBVoiceMailSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/NBVoiceMailSetting;->access$000(Lcom/android/phone/NBVoiceMailSetting;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBVoiceMailSetting$5;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    # getter for: Lcom/android/phone/NBVoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/NBVoiceMailSetting;->access$1400(Lcom/android/phone/NBVoiceMailSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NBVoiceMailSetting$5;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    # getter for: Lcom/android/phone/NBVoiceMailSetting;->mRingtoneLookupComplete:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NBVoiceMailSetting;->access$1500(Lcom/android/phone/NBVoiceMailSetting;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/phone/NBVoiceMailSetting$5;->this$0:Lcom/android/phone/NBVoiceMailSetting;

    # getter for: Lcom/android/phone/NBVoiceMailSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/phone/NBVoiceMailSetting;->access$000(Lcom/android/phone/NBVoiceMailSetting;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/common/util/SettingsUtil;->updateRingtoneName(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;I)V

    :cond_0
    return-void
.end method
