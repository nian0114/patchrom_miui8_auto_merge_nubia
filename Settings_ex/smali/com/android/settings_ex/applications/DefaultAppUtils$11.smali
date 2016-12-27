.class final Lcom/android/settings_ex/applications/DefaultAppUtils$11;
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
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 328
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    sget-object v2, Lcom/android/settings_ex/applications/DefaultAppUtils;->documentFileTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    .line 331
    .local v1, "postfix":Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;
    iget-object v2, v1, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;->post:Ljava/lang/String;

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->isNeedRemove(Ljava/lang/String;)Z
    invoke-static {v2}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$800(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    new-instance v2, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, v1, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;->post:Ljava/lang/String;

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestFilePath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;->type:Ljava/lang/String;

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$11;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_0
    new-instance v2, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, v1, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;->post:Ljava/lang/String;

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestFilePath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v6, v4, v6}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$11;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v2, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, v1, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;->post:Ljava/lang/String;

    # invokes: Lcom/android/settings_ex/applications/DefaultAppUtils;->formTestContentPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/applications/DefaultAppUtils;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v6, v4, v6}, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$11;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    .end local v1    # "postfix":Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;
    :cond_1
    return-void
.end method
