.class Lcom/android/phone/NBCallPromptsSound$1;
.super Ljava/lang/Object;
.source "NBCallPromptsSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBCallPromptsSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBCallPromptsSound;


# direct methods
.method constructor <init>(Lcom/android/phone/NBCallPromptsSound;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBCallPromptsSound$1;->this$0:Lcom/android/phone/NBCallPromptsSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    const/4 v4, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSound$1;->this$0:Lcom/android/phone/NBCallPromptsSound;

    # getter for: Lcom/android/phone/NBCallPromptsSound;->mSoundIdToPlay:I
    invoke-static {v0}, Lcom/android/phone/NBCallPromptsSound;->access$000(Lcom/android/phone/NBCallPromptsSound;)I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSound$1;->this$0:Lcom/android/phone/NBCallPromptsSound;

    # invokes: Lcom/android/phone/NBCallPromptsSound;->getCurrentVolume()F
    invoke-static {v0}, Lcom/android/phone/NBCallPromptsSound;->access$100(Lcom/android/phone/NBCallPromptsSound;)F

    move-result v2

    .local v2, "volume":F
    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    move v1, p2

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSound$1;->this$0:Lcom/android/phone/NBCallPromptsSound;

    const/4 v1, -0x1

    # setter for: Lcom/android/phone/NBCallPromptsSound;->mSoundIdToPlay:I
    invoke-static {v0, v1}, Lcom/android/phone/NBCallPromptsSound;->access$002(Lcom/android/phone/NBCallPromptsSound;I)I

    .end local v2    # "volume":F
    :cond_0
    return-void
.end method
