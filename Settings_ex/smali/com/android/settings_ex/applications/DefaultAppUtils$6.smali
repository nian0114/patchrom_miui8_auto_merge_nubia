.class final Lcom/android/settings_ex/applications/DefaultAppUtils$6;
.super Ljava/util/ArrayList;
.source "DefaultAppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/DefaultAppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$6;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$6;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$6;->add(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method
