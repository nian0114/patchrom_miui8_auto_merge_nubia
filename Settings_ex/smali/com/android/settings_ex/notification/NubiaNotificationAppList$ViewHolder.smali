.class Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;
.super Ljava/lang/Object;
.source "NubiaNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NubiaNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field row:Landroid/view/ViewGroup;

.field switchView:Lcn/nubia/commonui/widget/NubiaSwitch;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/notification/NubiaNotificationAppList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList$1;

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;-><init>()V

    return-void
.end method
