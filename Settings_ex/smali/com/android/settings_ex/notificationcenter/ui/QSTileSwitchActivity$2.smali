.class Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity$2;
.super Landroid/database/ContentObserver;
.source "QSTileSwitchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity$2;->this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity$2;->this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;

    # invokes: Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->initDataSource()V
    invoke-static {v0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;->access$200(Lcom/android/settings_ex/notificationcenter/ui/QSTileSwitchActivity;)V

    .line 86
    return-void
.end method
