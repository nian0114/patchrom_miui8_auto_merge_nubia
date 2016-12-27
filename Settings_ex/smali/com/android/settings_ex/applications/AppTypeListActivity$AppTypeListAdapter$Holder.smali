.class Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter$Holder;
.super Ljava/lang/Object;
.source "AppTypeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field public defaultAppSummary:Landroid/widget/TextView;

.field public defaultAppType:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter$Holder;->this$1:Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;Lcom/android/settings_ex/applications/AppTypeListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;
    .param p2, "x1"    # Lcom/android/settings_ex/applications/AppTypeListActivity$1;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter$Holder;-><init>(Lcom/android/settings_ex/applications/AppTypeListActivity$AppTypeListAdapter;)V

    return-void
.end method
