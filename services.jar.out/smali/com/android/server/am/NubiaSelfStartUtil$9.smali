.class Lcom/android/server/am/NubiaSelfStartUtil$9;
.super Ljava/lang/Object;
.source "NubiaSelfStartUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/NubiaSelfStartUtil;->addWidget(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/NubiaSelfStartUtil;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/am/NubiaSelfStartUtil$9;->this$0:Lcom/android/server/am/NubiaSelfStartUtil;

    iput-object p2, p0, Lcom/android/server/am/NubiaSelfStartUtil$9;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/NubiaSelfStartUtil$9;->val$className:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil$9;->this$0:Lcom/android/server/am/NubiaSelfStartUtil;

    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil$9;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil$9;->val$className:Ljava/lang/String;

    # invokes: Lcom/android/server/am/NubiaSelfStartUtil;->addWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->access$1600(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
