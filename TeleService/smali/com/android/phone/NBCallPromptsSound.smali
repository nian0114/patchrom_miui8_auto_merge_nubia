.class public Lcom/android/phone/NBCallPromptsSound;
.super Ljava/lang/Object;
.source "NBCallPromptsSound.java"


# static fields
.field private static final SOUND_FILES:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mSoundIdToPlay:I

.field private mSoundIds:[I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/media/audio/ui/minute_sound.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/media/audio/ui/call_accept.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/media/audio/ui/call_end.ogg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NBCallPromptsSound;->SOUND_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/NBCallPromptsSound;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Lcom/android/phone/NBCallPromptsSound$1;

    invoke-direct {v1, p0}, Lcom/android/phone/NBCallPromptsSound$1;-><init>(Lcom/android/phone/NBCallPromptsSound;)V

    iput-object v1, p0, Lcom/android/phone/NBCallPromptsSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v4, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/phone/NBCallPromptsSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    sget-object v1, Lcom/android/phone/NBCallPromptsSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundIds:[I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundIds:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundIdToPlay:I

    if-eqz p1, :cond_1

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/NBCallPromptsSound;->mAudioManager:Landroid/media/AudioManager;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NBCallPromptsSound;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBCallPromptsSound;

    .prologue
    iget v0, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundIdToPlay:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/NBCallPromptsSound;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NBCallPromptsSound;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundIdToPlay:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/NBCallPromptsSound;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NBCallPromptsSound;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/NBCallPromptsSound;->getCurrentVolume()F

    move-result v0

    return v0
.end method

.method private getCurrentVolume()F
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .local v2, "volume":D
    iget-object v4, p0, Lcom/android/phone/NBCallPromptsSound;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/NBCallPromptsSound;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .local v1, "maxVolume":I
    iget-object v4, p0, Lcom/android/phone/NBCallPromptsSound;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .local v0, "currVolume":I
    if-ltz v0, :cond_1

    if-gt v0, v1, :cond_1

    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    const/4 v0, 0x4

    :cond_0
    int-to-float v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    int-to-float v5, v1

    div-float/2addr v4, v5

    float-to-double v2, v4

    .end local v0    # "currVolume":I
    .end local v1    # "maxVolume":I
    :cond_1
    double-to-float v4, v2

    return v4
.end method


# virtual methods
.method public declared-synchronized load(I)V
    .locals 4
    .param p1, "soundName"    # I

    .prologue
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/phone/NBCallPromptsSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundIds:[I

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v2, Lcom/android/phone/NBCallPromptsSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized play(I)V
    .locals 7
    .param p1, "soundName"    # I

    .prologue
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/phone/NBCallPromptsSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sound requested: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v1, Lcom/android/phone/NBCallPromptsSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundIdToPlay:I

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundIds:[I

    iget v1, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundIdToPlay:I

    aput v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/android/phone/NBCallPromptsSound;->getCurrentVolume()F

    move-result v2

    .local v2, "volume":F
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundIds:[I

    aget v1, v1, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NBCallPromptsSound;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method
