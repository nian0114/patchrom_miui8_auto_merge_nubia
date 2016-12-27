.class public Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SUAppPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field appname:Landroid/widget/TextView;

.field cb:Landroid/widget/CheckBox;

.field ic:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter$ViewHolder;->this$1:Lcom/android/settings_ex/profile/SUAppPickerFragment$AppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
