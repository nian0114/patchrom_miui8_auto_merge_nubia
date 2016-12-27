.class Lcom/android/settings_ex/RingtonePickerActivity$3;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RingtonePickerActivity;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/settings_ex/RingtonePickerActivity$3;->this$0:Lcom/android/settings_ex/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity$3;->this$0:Lcom/android/settings_ex/RingtonePickerActivity;

    # getter for: Lcom/android/settings_ex/RingtonePickerActivity;->mAudioFocusChangeListener:Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;
    invoke-static {v0}, Lcom/android/settings_ex/RingtonePickerActivity;->access$400(Lcom/android/settings_ex/RingtonePickerActivity;)Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity$3;->this$0:Lcom/android/settings_ex/RingtonePickerActivity;

    # getter for: Lcom/android/settings_ex/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/settings_ex/RingtonePickerActivity;->access$500(Lcom/android/settings_ex/RingtonePickerActivity;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/RingtonePickerActivity$3;->this$0:Lcom/android/settings_ex/RingtonePickerActivity;

    # getter for: Lcom/android/settings_ex/RingtonePickerActivity;->mAudioFocusChangeListener:Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;
    invoke-static {v1}, Lcom/android/settings_ex/RingtonePickerActivity;->access$400(Lcom/android/settings_ex/RingtonePickerActivity;)Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity$3;->this$0:Lcom/android/settings_ex/RingtonePickerActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/RingtonePickerActivity;->mAudioFocusChangeListener:Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;
    invoke-static {v0, v1}, Lcom/android/settings_ex/RingtonePickerActivity;->access$402(Lcom/android/settings_ex/RingtonePickerActivity;Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;)Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;

    .line 440
    :cond_0
    return-void
.end method
