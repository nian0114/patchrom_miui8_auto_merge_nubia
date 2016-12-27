.class final Lcom/android/settings_ex/applications/DefaultAppUtils$3;
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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.MAIN"

    const-string v2, "android.intent.category.HOME"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$3;->add(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method
