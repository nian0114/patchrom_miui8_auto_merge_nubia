.class public final Lnubia/os/edge/EdgeTouchManager;
.super Ljava/lang/Object;
.source "EdgeTouchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/edge/EdgeTouchManager$1;,
        Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;,
        Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EdgePointerEventManager"

.field private static sInstance:Lnubia/os/edge/EdgeTouchManager;


# instance fields
.field private mEdgeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnubia/os/edge/OnEdgeTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field mEdgeListenersArray:[Lnubia/os/edge/OnEdgeTouchListener;

.field private mNormalListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnubia/os/edge/OnNormalTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field mNormalListenersArray:[Lnubia/os/edge/OnNormalTouchListener;

.field private mPointerEventListenerWrapper:Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;

.field private mService:Lnubia/os/edge/IEdgePointerEventManager;

.field private mWrapper:Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lnubia/os/edge/EdgeTouchManager;

    invoke-direct {v0}, Lnubia/os/edge/EdgeTouchManager;-><init>()V

    sput-object v0, Lnubia/os/edge/EdgeTouchManager;->sInstance:Lnubia/os/edge/EdgeTouchManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mWrapper:Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;

    .line 37
    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mPointerEventListenerWrapper:Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    .line 40
    new-array v0, v1, [Lnubia/os/edge/OnEdgeTouchListener;

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListenersArray:[Lnubia/os/edge/OnEdgeTouchListener;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    .line 43
    new-array v0, v1, [Lnubia/os/edge/OnNormalTouchListener;

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListenersArray:[Lnubia/os/edge/OnNormalTouchListener;

    .line 46
    return-void
.end method

.method static synthetic access$200(Lnubia/os/edge/EdgeTouchManager;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/edge/EdgeTouchManager;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lnubia/os/edge/EdgeTouchManager;->dispatchEdgeTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$300(Lnubia/os/edge/EdgeTouchManager;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/edge/EdgeTouchManager;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lnubia/os/edge/EdgeTouchManager;->dispatchNormalTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private dispatchEdgeTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 154
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    :cond_0
    return-void

    .line 158
    :cond_1
    iget-object v3, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 159
    :try_start_0
    iget-object v2, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListenersArray:[Lnubia/os/edge/OnEdgeTouchListener;

    if-nez v2, :cond_2

    .line 160
    iget-object v2, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lnubia/os/edge/OnEdgeTouchListener;

    iput-object v2, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListenersArray:[Lnubia/os/edge/OnEdgeTouchListener;

    .line 161
    iget-object v2, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListenersArray:[Lnubia/os/edge/OnEdgeTouchListener;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 163
    :cond_2
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListenersArray:[Lnubia/os/edge/OnEdgeTouchListener;

    .line 164
    .local v1, "listeners":[Lnubia/os/edge/OnEdgeTouchListener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 166
    aget-object v2, v1, v0

    if-eqz v2, :cond_3

    .line 167
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lnubia/os/edge/OnEdgeTouchListener;->onEdgeTouch(Landroid/view/MotionEvent;)V

    .line 165
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    .end local v1    # "listeners":[Lnubia/os/edge/OnEdgeTouchListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private dispatchNormalTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 173
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    :cond_0
    return-void

    .line 177
    :cond_1
    iget-object v3, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 178
    :try_start_0
    iget-object v2, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListenersArray:[Lnubia/os/edge/OnNormalTouchListener;

    if-nez v2, :cond_2

    .line 179
    iget-object v2, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lnubia/os/edge/OnNormalTouchListener;

    iput-object v2, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListenersArray:[Lnubia/os/edge/OnNormalTouchListener;

    .line 181
    iget-object v2, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListenersArray:[Lnubia/os/edge/OnNormalTouchListener;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 183
    :cond_2
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListenersArray:[Lnubia/os/edge/OnNormalTouchListener;

    .line 184
    .local v1, "listeners":[Lnubia/os/edge/OnNormalTouchListener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 186
    aget-object v2, v1, v0

    if-eqz v2, :cond_3

    .line 187
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lnubia/os/edge/OnNormalTouchListener;->onNormalTouch(Landroid/view/MotionEvent;)V

    .line 185
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "i":I
    .end local v1    # "listeners":[Lnubia/os/edge/OnNormalTouchListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getEdgePointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mWrapper:Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;-><init>(Lnubia/os/edge/EdgeTouchManager;Lnubia/os/edge/EdgeTouchManager$1;)V

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mWrapper:Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;

    .line 204
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mWrapper:Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;

    return-object v0
.end method

.method public static getInstance()Lnubia/os/edge/EdgeTouchManager;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lnubia/os/edge/EdgeTouchManager;->sInstance:Lnubia/os/edge/EdgeTouchManager;

    return-object v0
.end method

.method private getPointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mPointerEventListenerWrapper:Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;-><init>(Lnubia/os/edge/EdgeTouchManager;Lnubia/os/edge/EdgeTouchManager$1;)V

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mPointerEventListenerWrapper:Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;

    .line 211
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mPointerEventListenerWrapper:Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;

    return-object v0
.end method

.method private getService()Lnubia/os/edge/IEdgePointerEventManager;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mService:Lnubia/os/edge/IEdgePointerEventManager;

    if-nez v0, :cond_0

    .line 194
    const-string v0, "nubia.edge.touch"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mService:Lnubia/os/edge/IEdgePointerEventManager;

    .line 197
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mService:Lnubia/os/edge/IEdgePointerEventManager;

    return-object v0
.end method

.method private registerEdgeTouch()V
    .locals 2

    .prologue
    .line 123
    :try_start_0
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getEdgePointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lnubia/os/edge/IEdgePointerEventManager;->registerEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private registerNormalTouch()V
    .locals 2

    .prologue
    .line 139
    :try_start_0
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getPointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lnubia/os/edge/IEdgePointerEventManager;->registerPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unregisterEdgeTouch()V
    .locals 2

    .prologue
    .line 131
    :try_start_0
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getEdgePointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lnubia/os/edge/IEdgePointerEventManager;->unregisterEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unregisterNormalTouch()V
    .locals 2

    .prologue
    .line 147
    :try_start_0
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getPointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchManager$PointerEventListenerWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lnubia/os/edge/IEdgePointerEventManager;->unregisterPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public registerEdgeTouchListener(Lnubia/os/edge/OnEdgeTouchListener;)V
    .locals 2
    .param p1, "listener"    # Lnubia/os/edge/OnEdgeTouchListener;

    .prologue
    .line 60
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 66
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->registerEdgeTouch()V

    .line 68
    :cond_1
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListenersArray:[Lnubia/os/edge/OnEdgeTouchListener;

    .line 71
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerNormalTouchListener(Lnubia/os/edge/OnNormalTouchListener;)V
    .locals 2
    .param p1, "listener"    # Lnubia/os/edge/OnNormalTouchListener;

    .prologue
    .line 91
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->registerNormalTouch()V

    .line 99
    :cond_1
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListenersArray:[Lnubia/os/edge/OnNormalTouchListener;

    .line 102
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterEdgeTouchListener(Lnubia/os/edge/OnEdgeTouchListener;)V
    .locals 2
    .param p1, "listener"    # Lnubia/os/edge/OnEdgeTouchListener;

    .prologue
    .line 75
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListenersArray:[Lnubia/os/edge/OnEdgeTouchListener;

    .line 82
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mEdgeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 83
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->unregisterEdgeTouch()V

    .line 86
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterNormalTouchListener(Lnubia/os/edge/OnNormalTouchListener;)V
    .locals 2
    .param p1, "listener"    # Lnubia/os/edge/OnNormalTouchListener;

    .prologue
    .line 107
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListenersArray:[Lnubia/os/edge/OnNormalTouchListener;

    .line 114
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager;->mNormalListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 115
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->unregisterNormalTouch()V

    .line 118
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnubia/os/edge/IEdgePointerEventManager;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method
