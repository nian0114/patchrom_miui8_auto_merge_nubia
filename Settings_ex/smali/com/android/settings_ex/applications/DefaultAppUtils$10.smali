.class final Lcom/android/settings_ex/applications/DefaultAppUtils$10;
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
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 322
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "file"

    const-string v3, ""

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/*"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$10;->add(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method
