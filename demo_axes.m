function varargout = demo_axes(varargin)
% DEMO_AXES MATLAB code for demo_axes.fig
%      DEMO_AXES, by itself, creates a new DEMO_AXES or raises the existing
%      singleton*.
%
%      H = DEMO_AXES returns the handle to a new DEMO_AXES or the handle to
%      the existing singleton*.
%
%      DEMO_AXES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DEMO_AXES.M with the given input arguments.
%
%      DEMO_AXES('Property','Value',...) creates a new DEMO_AXES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before demo_axes_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to demo_axes_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help demo_axes

% Last Modified by GUIDE v2.5 29-Jun-2015 17:41:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @demo_axes_OpeningFcn, ...
                   'gui_OutputFcn',  @demo_axes_OutputFcn, ...
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


% --- Executes just before demo_axes is made visible.
function demo_axes_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to demo_axes (see VARARGIN)

% Choose default command line output for demo_axes
handles.output = hObject;
global x

x=-4*pi:pi/10:4*pi;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes demo_axes wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = demo_axes_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in sin.
function sin_Callback(hObject, eventdata, handles)
% hObject    handle to sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
y=sin(x);

axes(handles.axes1);
plot(x,y);

% --- Executes on button press in cos.
function cos_Callback(hObject, eventdata, handles)
% hObject    handle to cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
y=cos(x);

axes(handles.axes1);
plot(x,y,'g');

% --- Executes on button press in tan.
function tan_Callback(hObject, eventdata, handles)
% hObject    handle to tan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
y=cos(x)+sin(x);

axes(handles.axes1);
plot(x,y,'r');