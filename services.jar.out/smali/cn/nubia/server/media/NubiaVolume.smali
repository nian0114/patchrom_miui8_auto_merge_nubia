.class public Lcn/nubia/server/media/NubiaVolume;
.super Ljava/lang/Object;
.source "NubiaVolume.java"


# static fields
.field private static final HEADSET_PLUG_ORIGIN_VOLUME:Ljava/lang/String; = "headset_plug_origin_volume"

.field private static final HEADSET_VOLUME_RESTORED:Ljava/lang/String; = "headset_volume_restored"

.field private static final LAST_PERSIST_MUSIC_VOLUME_NAME:Ljava/lang/String; = "nubia_stream_music_before_muted"

.field private static final LAST_RINGER_MODE:Ljava/lang/String; = "nubia_last_ringer_mode"

.field private static final LAST_RINGER_VOLUME:Ljava/lang/String; = "nubia_last_ringer_volume"

.field private static final SET_RINGER_MODE:Ljava/lang/String; = "nubia_set_ringer_mode"

.field private static final TAG:Ljava/lang/String; = "NubiaVolume"


# instance fields
.field public mAdjustVolume:Z

.field private mAffectStreamTypeByRingerModeForNubia:I

.field private mAudioService:Lcom/android/server/audio/AudioService;

.field private mContext:Landroid/content/Context;

.field private mLastPersistMusicVolume:I

.field private mLastRingerMode:I

.field private mOriginVolume:I

.field public mSetRingerMode:Z

.field private mVolumeRestored:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioService"    # Lcom/android/server/audio/AudioService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/server/media/NubiaVolume;->mAffectStreamTypeByRingerModeForNubia:I

    iput-object p2, p0, Lcn/nubia/server/media/NubiaVolume;->mAudioService:Lcom/android/server/audio/AudioService;

    iput-object p1, p0, Lcn/nubia/server/media/NubiaVolume;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDefaultIndexForDevice(III)I
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "device"    # I
    .param p3, "def"    # I

    .prologue
    and-int/lit16 v0, p2, 0x18c

    if-nez v0, :cond_1

    .end local p3    # "def":I
    :cond_0
    :goto_0
    return p3

    .restart local p3    # "def":I
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p3, 0x7

    goto :goto_0
.end method

.method public getLastRingerMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/media/NubiaVolume;->mLastRingerMode:I

    return v0
.end method

.method public getLastStreamVolume()I
    .locals 6

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    iget-object v3, p0, Lcn/nubia/server/media/NubiaVolume;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nubia_last_ringer_volume"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, "volume":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public initStateForSilentMode()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    iget-object v6, p0, Lcn/nubia/server/media/NubiaVolume;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v6, "nubia_last_ringer_mode"

    invoke-static {v0, v6, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .local v2, "lastRingerMode":I
    const-string v6, "nubia_stream_music_before_muted"

    invoke-static {v0, v6, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .local v1, "lastPersistMusicVolume":I
    const-string v6, "nubia_set_ringer_mode"

    invoke-static {v0, v6, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcn/nubia/server/media/NubiaVolume;->mSetRingerMode:Z

    iput v1, p0, Lcn/nubia/server/media/NubiaVolume;->mLastPersistMusicVolume:I

    iput v2, p0, Lcn/nubia/server/media/NubiaVolume;->mLastRingerMode:I

    const-string v6, "headset_plug_origin_volume"

    invoke-static {v0, v6, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcn/nubia/server/media/NubiaVolume;->mOriginVolume:I

    const-string v6, "headset_volume_restored"

    invoke-static {v0, v6, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v7, :cond_2

    :goto_1
    iput-boolean v7, p0, Lcn/nubia/server/media/NubiaVolume;->mVolumeRestored:Z

    iget-boolean v6, p0, Lcn/nubia/server/media/NubiaVolume;->mVolumeRestored:Z

    if-eqz v6, :cond_0

    sget-object v6, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    aget-object v3, v6, v10

    .local v3, "name":Ljava/lang/String;
    invoke-static {v10}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "suffix":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v4, v3

    .local v4, "settingName":Ljava/lang/String;
    :goto_2
    iget v6, p0, Lcn/nubia/server/media/NubiaVolume;->mOriginVolume:I

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "settingName":Ljava/lang/String;
    .end local v5    # "suffix":Ljava/lang/String;
    :cond_0
    return-void

    :cond_1
    move v6, v8

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1

    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "suffix":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public modifyAffectedStreamVolume(IIIIIII)I
    .locals 4
    .param p1, "direction"    # I
    .param p2, "streamType"    # I
    .param p3, "streamTypeAlias"    # I
    .param p4, "flags"    # I
    .param p5, "aliasIndex"    # I
    .param p6, "device"    # I
    .param p7, "step"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/media/NubiaVolume;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    if-eq v1, v2, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    move v0, p7

    .end local p7    # "step":I
    .local v0, "step":I
    :goto_0
    return v0

    .end local v0    # "step":I
    .restart local p7    # "step":I
    :cond_1
    and-int/lit8 v1, p4, 0x20

    if-nez v1, :cond_2

    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    if-ne p6, v2, :cond_2

    iget v1, p0, Lcn/nubia/server/media/NubiaVolume;->mLastPersistMusicVolume:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/server/media/NubiaVolume;->mAudioService:Lcom/android/server/audio/AudioService;

    iget v2, p0, Lcn/nubia/server/media/NubiaVolume;->mLastPersistMusicVolume:I

    mul-int/lit8 v2, v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, p3, v3}, Lcom/android/server/audio/AudioService;->rescaleIndex(IIII)I

    move-result p7

    :cond_2
    move v0, p7

    .end local p7    # "step":I
    .restart local v0    # "step":I
    goto :goto_0
.end method

.method public modifyHeadSetVolume(II)V
    .locals 8
    .param p1, "device"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ne p2, v6, :cond_4

    iget-object v0, p0, Lcn/nubia/server/media/NubiaVolume;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/audio/AudioService;->getStreamVolumeForDevice(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/media/NubiaVolume;->mOriginVolume:I

    iget v0, p0, Lcn/nubia/server/media/NubiaVolume;->mOriginVolume:I

    if-le v0, v3, :cond_3

    iget-object v0, p0, Lcn/nubia/server/media/NubiaVolume;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, Lcn/nubia/server/media/NubiaVolume;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    iput-boolean v6, p0, Lcn/nubia/server/media/NubiaVolume;->mVolumeRestored:Z

    :goto_1
    iget-object v0, p0, Lcn/nubia/server/media/NubiaVolume;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "headset_plug_origin_volume"

    iget v2, p0, Lcn/nubia/server/media/NubiaVolume;->mOriginVolume:I

    invoke-static {v0, v1, v2, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    :goto_2
    iget-object v0, p0, Lcn/nubia/server/media/NubiaVolume;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "headset_volume_restored"

    iget-boolean v2, p0, Lcn/nubia/server/media/NubiaVolume;->mVolumeRestored:Z

    if-eqz v2, :cond_2

    move v4, v6

    :cond_2
    invoke-static {v0, v1, v4, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcn/nubia/server/media/NubiaVolume;->mVolumeRestored:Z

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcn/nubia/server/media/NubiaVolume;->mVolumeRestored:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/media/NubiaVolume;->mAudioService:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcn/nubia/server/media/NubiaVolume;->mOriginVolume:I

    const/4 v5, 0x0

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeForDevice(IIIILjava/lang/String;)V

    iput-boolean v4, p0, Lcn/nubia/server/media/NubiaVolume;->mVolumeRestored:Z

    goto :goto_2
.end method

.method public modifyIndexForDevice(III)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    add-int/lit8 v0, p2, 0x5

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcn/nubia/server/media/NubiaVolume;->mLastPersistMusicVolume:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p3, v1, :cond_0

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/media/NubiaVolume;->mVolumeRestored:Z

    goto :goto_0
.end method

.method public persistAffectedVolume(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v3, -0x2

    if-eq p2, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/media/NubiaVolume;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia_stream_music_before_muted"

    iget v2, p0, Lcn/nubia/server/media/NubiaVolume;->mLastPersistMusicVolume:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/server/media/NubiaVolume;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headset_volume_restored"

    iget-boolean v0, p0, Lcn/nubia/server/media/NubiaVolume;->mVolumeRestored:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public persistWhenRingerModeChange(I)V
    .locals 4
    .param p1, "ringerMode"    # I

    .prologue
    const/4 v3, -0x2

    iget-object v1, p0, Lcn/nubia/server/media/NubiaVolume;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "nubia_last_ringer_mode"

    iget v2, p0, Lcn/nubia/server/media/NubiaVolume;->mLastRingerMode:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v1, "nubia_stream_music_before_muted"

    iget v2, p0, Lcn/nubia/server/media/NubiaVolume;->mLastPersistMusicVolume:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v2, "nubia_set_ringer_mode"

    iget-boolean v1, p0, Lcn/nubia/server/media/NubiaVolume;->mSetRingerMode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveRingerStreamVolume(I)V
    .locals 4
    .param p1, "volume"    # I

    .prologue
    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/media/NubiaVolume;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nubia_last_ringer_volume"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public saveStreamVolume(IZ)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "visible"    # Z

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/nubia/server/media/NubiaVolume;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/server/media/NubiaVolume;->saveRingerStreamVolume(I)V

    goto :goto_0
.end method

.method public updateStateWhenRingerModeChange(I)V
    .locals 1
    .param p1, "ringerMode"    # I

    .prologue
    iget-object v0, p0, Lcn/nubia/server/media/NubiaVolume;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    iput v0, p0, Lcn/nubia/server/media/NubiaVolume;->mLastRingerMode:I

    iget-boolean v0, p0, Lcn/nubia/server/media/NubiaVolume;->mAdjustVolume:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/media/NubiaVolume;->mSetRingerMode:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateStreamVolume(ZII)V
    .locals 7
    .param p1, "persist"    # Z
    .param p2, "streamType"    # I
    .param p3, "ringerMode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/nubia/server/media/NubiaVolume;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p2, v2}, Lcom/android/server/audio/AudioService;->getCurrentIndexForDevice(II)I

    move-result v6

    .local v6, "currentIndex":I
    const-string v0, "NubiaVolume"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "streamType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", currentIndex:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ringerMode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mLastPersistMusicVolume:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/nubia/server/media/NubiaVolume;->mLastPersistMusicVolume:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p3, v2, :cond_2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    :cond_2
    if-nez v6, :cond_3

    iget-object v0, p0, Lcn/nubia/server/media/NubiaVolume;->mAudioService:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcn/nubia/server/media/NubiaVolume;->mLastPersistMusicVolume:I

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeForDevice(IIIILjava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez p3, :cond_0

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcn/nubia/server/media/NubiaVolume;->mAudioService:Lcom/android/server/audio/AudioService;

    move v1, p2

    move v3, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeForDevice(IIIILjava/lang/String;)V

    iput v6, p0, Lcn/nubia/server/media/NubiaVolume;->mLastPersistMusicVolume:I

    goto :goto_0
.end method
