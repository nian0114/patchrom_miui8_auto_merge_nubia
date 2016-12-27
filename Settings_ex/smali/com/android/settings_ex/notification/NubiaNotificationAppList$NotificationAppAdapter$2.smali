.class Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter$2;
.super Ljava/lang/Object;
.source "NubiaNotificationAppList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$vh:Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter$2;->this$1:Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;

    iput-object p2, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter$2;->val$vh:Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter$2;->val$vh:Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;

    iget-object v1, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;->switchView:Lcn/nubia/commonui/widget/NubiaSwitch;

    iget-object v0, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter$2;->val$vh:Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;->switchView:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 295
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
