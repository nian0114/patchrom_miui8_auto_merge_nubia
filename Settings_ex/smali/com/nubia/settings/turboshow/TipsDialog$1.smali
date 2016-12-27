.class Lcom/nubia/settings/turboshow/TipsDialog$1;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/settings/turboshow/TipsDialog;->initView()V
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
    .line 72
    iput-object p1, p0, Lcom/nubia/settings/turboshow/TipsDialog$1;->this$0:Lcom/nubia/settings/turboshow/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TipsDialog$1;->this$0:Lcom/nubia/settings/turboshow/TipsDialog;

    # invokes: Lcom/nubia/settings/turboshow/TipsDialog;->createDialogOutAnimation()V
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TipsDialog;->access$000(Lcom/nubia/settings/turboshow/TipsDialog;)V

    .line 76
    return-void
.end method
