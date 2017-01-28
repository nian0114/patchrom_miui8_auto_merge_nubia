.class Landroid/widget/RemoteViews$SetOnClickPendingIntentList;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnClickPendingIntentList"
.end annotation


# static fields
.field public static final TAG:I = 0xc8


# instance fields
.field pendingIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;)V
    .locals 2
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "pendingIntentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty or null list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->viewId:I

    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->pendingIntentList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 4
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->this$0:Landroid/widget/RemoteViews;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->viewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->pendingIntentList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v1

    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->pendingIntentList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    iget v3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, "target":Landroid/view/View;
    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z
    invoke-static {v3}, Landroid/widget/RemoteViews;->access$100(Landroid/widget/RemoteViews;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    new-instance v1, Landroid/widget/RemoteViews$SetOnClickPendingIntentList$1;

    invoke-direct {v1, p0, p3}, Landroid/widget/RemoteViews$SetOnClickPendingIntentList$1;-><init>(Landroid/widget/RemoteViews$SetOnClickPendingIntentList;Landroid/widget/RemoteViews$OnClickHandler;)V

    .local v1, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "SetOnClickPendingIntentList"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xc8

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->viewId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->pendingIntentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntentList;->pendingIntentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    return-void
.end method
