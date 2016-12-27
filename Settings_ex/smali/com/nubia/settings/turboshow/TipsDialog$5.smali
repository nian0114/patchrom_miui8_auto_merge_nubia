.class Lcom/nubia/settings/turboshow/TipsDialog$5;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/settings/turboshow/TipsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/settings/turboshow/TipsDialog;


# direct methods
.method constructor <init>(Lcom/nubia/settings/turboshow/TipsDialog;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/nubia/settings/turboshow/TipsDialog$5;->this$0:Lcom/nubia/settings/turboshow/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TipsDialog$5;->this$0:Lcom/nubia/settings/turboshow/TipsDialog;

    # invokes: Lcom/nubia/settings/turboshow/TipsDialog;->createDialogInAnimation()V
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TipsDialog;->access$400(Lcom/nubia/settings/turboshow/TipsDialog;)V

    .line 188
    return-void
.end method
