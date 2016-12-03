.class Lcom/android/internal/app/NubiaResolverListActivity$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "NubiaResolverListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NubiaResolverListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/NubiaResolverListActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/NubiaResolverListActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/internal/app/NubiaResolverListActivity$1;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity$1;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    iget-object v0, v0, Lcom/android/internal/app/NubiaResolverListActivity;->mShareListApater:Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;

    invoke-virtual {v0}, Lcom/android/internal/app/NubiaResolverListActivity$NubiaShareListApater;->handlePackagesChanged()V

    .line 197
    return-void
.end method
