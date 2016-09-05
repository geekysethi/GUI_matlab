function varargout = radio_2(varargin)
% RADIO_2 MATLAB code for radio_2.fig
%      RADIO_2, by itself, creates a new RADIO_2 or raises the existing
%      singleton*.
%
%      H = RADIO_2 returns the handle to a new RADIO_2 or the handle to
%      the existing singleton*.
%
%      RADIO_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RADIO_2.M with the given input arguments.
%
%      RADIO_2('Property','Value',...) creates a new RADIO_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before radio_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to radio_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help radio_2

% Last Modified by GUIDE v2.5 30-Jun-2015 18:05:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @radio_2_OpeningFcn, ...
                   'gui_OutputFcn',  @radio_2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before radio_2 is made visible.
function radio_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to radio_2 (see VARARGIN)

% Choose default command line output for radio_2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global v1 v2 v3 c1 c2 c3 x y
x=0:pi/100:2*pi;
v1=0;
v2=0;
v3=0;
c1=0;
c2=0;
c3=0;
y=0;
% UIWAIT makes radio_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = radio_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in graph1.
function graph1_Callback(hObject, eventdata, handles)
% hObject    handle to graph1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph1


global c1 
c1=get(handles.graph1,'value');



% --- Executes on button press in graph3.
function graph3_Callback(hObject, eventdata, handles)
% hObject    handle to graph3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph3

global c3 
c3=get(handles.graph3,'value');


% --- Executes on button press in graph2.
function graph2_Callback(hObject, eventdata, handles)
% hObject    handle to graph2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of graph2

global c2 
c2=get(handles.graph2,'value');


% --- Executes on button press in sin.
function sin_Callback(hObject, eventdata, handles)
% hObject    handle to sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sin

global v1 v2 v3 
v1=get(handles.sin,'value');
if(v1==1)
    v2=0;
    v3=0;
    
    set(handles.cos,'value',0);
    
    set(handles.tan,'value',0);
    
       
end


% --- Executes on button press in cos.
function cos_Callback(hObject, eventdata, handles)
% hObject    handle to cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cos


global v1 v2 v3 
v2=get(handles.cos,'value');
if(v2==1)
    v1=0;
    v3=0;
    
    set(handles.sin,'value',0);
    
    set(handles.tan,'value',0);
    
       
end

% --- Executes on button press in tan.
function tan_Callback(hObject, eventdata, handles)
% hObject    handle to tan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tan

global v1 v2 v3 
v3=get(handles.tan,'value');
if(v3==1)
    v2=0;
    v1=0;
    
    set(handles.sin,'value',0);
    
    set(handles.cos,'value',0);
   
       
end


% --- Executes on button press in graph.
function graph_Callback(hObject, eventdata, handles)
% hObject    handle to graph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global v1 v2 v3 c1 c2 c3 x y
if(v1==1)
    y=sin(x);
elseif (v2==1)
    y=cos(x);
    
elseif (v3==1)
    y=tan(x);
     
end;
if(c1==1)
    axes(handles.axes1)
    plot(x,y);
end


if(c2==1)
    axes(handles.axes2)
    plot(x,y);
end

if(c3==1)
    axes(handles.axes3);
    plot(x,y);
end


if(c1==0)
    cla(handles.axes1);
end

if(c2==0)
    cla(handles.axes2);
end
if(c3==0)
    cla(handles.axes3);
end


