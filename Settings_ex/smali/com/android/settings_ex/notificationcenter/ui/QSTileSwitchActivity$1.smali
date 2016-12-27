.class Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity$1;
.super Ljava/lang/Object;
.source "QSTileSwitchActivity.java"

# interfaces
.implements Lcom/android/settings_ex/notificationcenter/ui/QSTileDragGridView$OnChanageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->initDataSource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;

.field final synthetic val$mSimpleAdapter:Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;

    iput-object p2, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity$1;->val$mSimpleAdapter:Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mDataSourceList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->access$000(Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->mQstilesString:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->access$100(Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity$1;->val$mSimpleAdapter:Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;

    invoke-virtual {v0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;->notifyDataSetChanged()V

    .line 77
    return-void
.end method
