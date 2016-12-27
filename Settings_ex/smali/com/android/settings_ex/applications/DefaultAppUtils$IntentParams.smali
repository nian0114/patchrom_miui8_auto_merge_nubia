.class public Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;
.super Ljava/lang/Object;
.source "DefaultAppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/DefaultAppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentParams"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->action:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->category:Ljava/lang/String;

    .line 123
    iput-object p3, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->data:Ljava/lang/String;

    .line 124
    iput-object p4, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->type:Ljava/lang/String;

    .line 125
    return-void
.end method


# virtual methods
.method public toIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->action:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->category:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->data:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->type:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    :cond_2
    :goto_0
    return-object v0

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->data:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 140
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 142
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->type:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/r/n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/r/n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$IntentParams;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
