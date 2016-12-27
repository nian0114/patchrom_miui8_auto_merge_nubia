.class Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;
.super Ljava/lang/Object;
.source "MemoryManageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/MemoryManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entity"
.end annotation


# instance fields
.field private fragment:Landroid/app/Fragment;

.field final synthetic this$0:Lcom/android/settings_ex/applications/MemoryManageFragment;

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/MemoryManageFragment;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;->this$0:Lcom/android/settings_ex/applications/MemoryManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p2, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;->title:Ljava/lang/String;

    .line 244
    iput-object p3, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;->fragment:Landroid/app/Fragment;

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;->fragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/applications/MemoryManageFragment$Entity;->title:Ljava/lang/String;

    return-object v0
.end method
