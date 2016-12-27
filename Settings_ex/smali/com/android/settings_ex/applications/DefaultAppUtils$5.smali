.class final Lcom/android/settings_ex/applications/DefaultAppUtils$5;
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

    .line 269
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://www.testSite.com"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$5;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://www.testSite.com"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$5;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "android.intent.category.BROWSABLE"

    const-string v3, "http://www.testSite.com"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$5;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "android.intent.category.BROWSABLE"

    const-string v3, "https://www.testSite.com"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$5;->add(Ljava/lang/Object;)Z

    .line 279
    return-void
.end method
