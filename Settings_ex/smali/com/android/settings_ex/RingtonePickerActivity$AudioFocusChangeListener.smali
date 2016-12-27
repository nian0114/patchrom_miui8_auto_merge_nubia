.class Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RingtonePickerActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/RingtonePickerActivity;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;->this$0:Lcom/android/settings_ex/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/RingtonePickerActivity;Lcom/android/settings_ex/RingtonePickerActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/RingtonePickerActivity;
    .param p2, "x1"    # Lcom/android/settings_ex/RingtonePickerActivity$1;

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;-><init>(Lcom/android/settings_ex/RingtonePickerActivity;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 448
    packed-switch p1, :pswitch_data_0

    .line 455
    :goto_0
    return-void

    .line 452
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;->this$0:Lcom/android/settings_ex/RingtonePickerActivity;

    # invokes: Lcom/android/settings_ex/RingtonePickerActivity;->stopAnyPlayingRingtone()V
    invoke-static {v0}, Lcom/android/settings_ex/RingtonePickerActivity;->access$600(Lcom/android/settings_ex/RingtonePickerActivity;)V

    goto :goto_0

    .line 448
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
