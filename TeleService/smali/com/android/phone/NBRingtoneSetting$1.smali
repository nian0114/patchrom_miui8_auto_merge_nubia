.class Lcom/android/phone/NBRingtoneSetting$1;
.super Landroid/os/Handler;
.source "NBRingtoneSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBRingtoneSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBRingtoneSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NBRingtoneSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBRingtoneSetting$1;->this$0:Lcom/android/phone/NBRingtoneSetting;

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
    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting$1;->this$0:Lcom/android/phone/NBRingtoneSetting;

    # getter for: Lcom/android/phone/NBRingtoneSetting;->mDefaultOneRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;
    invoke-static {v0}, Lcom/android/phone/NBRingtoneSetting;->access$000(Lcom/android/phone/NBRingtoneSetting;)Lcom/android/phone/NBDefaultRingtonePreference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/phone/NBDefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting$1;->this$0:Lcom/android/phone/NBRingtoneSetting;

    # getter for: Lcom/android/phone/NBRingtoneSetting;->mDefaultTwoRingtonePreference:Lcom/android/phone/NBDefaultRingtonePreference;
    invoke-static {v0}, Lcom/android/phone/NBRingtoneSetting;->access$100(Lcom/android/phone/NBRingtoneSetting;)Lcom/android/phone/NBDefaultRingtonePreference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/phone/NBDefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting$1;->this$0:Lcom/android/phone/NBRingtoneSetting;

    # getter for: Lcom/android/phone/NBRingtoneSetting;->mOneNubiaRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/NBRingtoneSetting;->access$200(Lcom/android/phone/NBRingtoneSetting;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/NBRingtoneSetting$1;->this$0:Lcom/android/phone/NBRingtoneSetting;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    # setter for: Lcom/android/phone/NBRingtoneSetting;->summaryOne:Ljava/lang/CharSequence;
    invoke-static {v1, v0}, Lcom/android/phone/NBRingtoneSetting;->access$302(Lcom/android/phone/NBRingtoneSetting;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/NBRingtoneSetting$1;->this$0:Lcom/android/phone/NBRingtoneSetting;

    # getter for: Lcom/android/phone/NBRingtoneSetting;->mTwoNubiaRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/NBRingtoneSetting;->access$400(Lcom/android/phone/NBRingtoneSetting;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/NBRingtoneSetting$1;->this$0:Lcom/android/phone/NBRingtoneSetting;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    # setter for: Lcom/android/phone/NBRingtoneSetting;->summaryTwo:Ljava/lang/CharSequence;
    invoke-static {v1, v0}, Lcom/android/phone/NBRingtoneSetting;->access$502(Lcom/android/phone/NBRingtoneSetting;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
