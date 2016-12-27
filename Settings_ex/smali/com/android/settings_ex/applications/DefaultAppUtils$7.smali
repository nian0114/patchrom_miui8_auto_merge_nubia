.class final Lcom/android/settings_ex/applications/DefaultAppUtils$7;
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

    .line 291
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "bmp"

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestFilePath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/bmp"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$7;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "gif"

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestFilePath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/gif"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$7;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "png"

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestFilePath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/png"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$7;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "webp"

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestFilePath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/webp"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$7;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "bmp"

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestFilePath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/x-ms-bmp"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$7;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "wbmp"

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestFilePath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/vnd.wap.wbmp"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$7;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "jpeg"

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestFilePath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/jpeg"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$7;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "bmp"

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestContentPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/bmp"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$7;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "gif"

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestContentPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/gif"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$7;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "png"

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestContentPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/png"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$7;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "webp"

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestContentPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/webp"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$7;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "bmp"

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestContentPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/x-ms-bmp"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$7;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "wbmp"

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestContentPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/vnd.wap.wbmp"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$7;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "jpeg"

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestContentPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/jpeg"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$7;->add(Ljava/lang/Object;)Z

    .line 308
    return-void
.end method
