.class Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter$1;
.super Ljava/lang/Object;
.source "NubiaNotificationAppList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;

.field final synthetic val$row:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter$1;->this$1:Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;

    iput-object p2, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter$1;->val$row:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "newValue"    # Z

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter$1;->this$1:Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;

    iget-object v0, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mBackend:Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$1100(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter$1;->val$row:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;

    iget-object v1, v1, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter$1;->val$row:Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;

    iget v2, v2, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->uid:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;->setHighPriority(Ljava/lang/String;IZ)Z

    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter$1;->this$1:Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;->notifyDataSetChanged()V

    .line 289
    return-void
.end method
