.class Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;
.super Ljava/lang/Object;
.source "DefaultAppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/DefaultAppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "postAndType"
.end annotation


# instance fields
.field post:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "post"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;->post:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;->type:Ljava/lang/String;

    .line 163
    return-void
.end method
