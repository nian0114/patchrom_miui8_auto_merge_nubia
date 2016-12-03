.class Lcom/android/internal/app/NubiaResolverListActivity$LoadAdapterIconTask;
.super Lcom/android/internal/app/NubiaResolverListActivity$LoadIconTask;
.source "NubiaResolverListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NubiaResolverListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadAdapterIconTask"
.end annotation


# instance fields
.field private final mLAdapter:Landroid/widget/BaseAdapter;

.field final synthetic this$0:Lcom/android/internal/app/NubiaResolverListActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/NubiaResolverListActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p2, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .param p3, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/internal/app/NubiaResolverListActivity$LoadAdapterIconTask;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/NubiaResolverListActivity$LoadIconTask;-><init>(Lcom/android/internal/app/NubiaResolverListActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 382
    iput-object p3, p0, Lcom/android/internal/app/NubiaResolverListActivity$LoadAdapterIconTask;->mLAdapter:Landroid/widget/BaseAdapter;

    .line 383
    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/android/internal/app/NubiaResolverListActivity$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity$LoadAdapterIconTask;->mLAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 389
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 377
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/NubiaResolverListActivity$LoadAdapterIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
