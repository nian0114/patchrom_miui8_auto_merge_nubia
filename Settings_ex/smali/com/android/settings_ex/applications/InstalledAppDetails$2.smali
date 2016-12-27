.class Lcom/android/settings_ex/applications/InstalledAppDetails$2;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    # invokes: Lcom/android/settings_ex/applications/InstalledAppDetails;->startManagePermissionsActivity()V
    invoke-static {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$500(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    .line 607
    return-void
.end method
