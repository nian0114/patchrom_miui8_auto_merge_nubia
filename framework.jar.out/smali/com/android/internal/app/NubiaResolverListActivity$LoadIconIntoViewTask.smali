.class Lcom/android/internal/app/NubiaResolverListActivity$LoadIconIntoViewTask;
.super Lcom/android/internal/app/NubiaResolverListActivity$LoadIconTask;
.source "NubiaResolverListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NubiaResolverListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconIntoViewTask"
.end annotation


# instance fields
.field private final mTargetView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/internal/app/NubiaResolverListActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/NubiaResolverListActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .param p3, "target"    # Landroid/widget/ImageView;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/internal/app/NubiaResolverListActivity$LoadIconIntoViewTask;->this$0:Lcom/android/internal/app/NubiaResolverListActivity;

    .line 396
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/NubiaResolverListActivity$LoadIconTask;-><init>(Lcom/android/internal/app/NubiaResolverListActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 397
    iput-object p3, p0, Lcom/android/internal/app/NubiaResolverListActivity$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    .line 398
    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 402
    invoke-super {p0, p1}, Lcom/android/internal/app/NubiaResolverListActivity$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/app/NubiaResolverListActivity$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 392
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/NubiaResolverListActivity$LoadIconIntoViewTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
