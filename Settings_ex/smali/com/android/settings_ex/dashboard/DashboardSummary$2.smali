.class Lcom/android/settings_ex/dashboard/DashboardSummary$2;
.super Ljava/lang/Object;
.source "DashboardSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;

.field final synthetic val$tile:Lcom/android/settings_ex/dashboard/DashboardTile;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dashboard/DashboardSummary;Lcom/android/settings_ex/dashboard/DashboardTile;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;

    iput-object p2, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$2;->val$tile:Lcom/android/settings_ex/dashboard/DashboardTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$2;->val$tile:Lcom/android/settings_ex/dashboard/DashboardTile;

    # invokes: Lcom/android/settings_ex/dashboard/DashboardSummary;->onItemClick(Lcom/android/settings_ex/dashboard/DashboardTile;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/dashboard/DashboardSummary;->access$200(Lcom/android/settings_ex/dashboard/DashboardSummary;Lcom/android/settings_ex/dashboard/DashboardTile;)V

    .line 249
    return-void
.end method
